page 70700005 "Inv&CrMemo Page"
{
    // version F365.RC1.W110.00

    Caption = 'Document List';
    DataCaptionFields = "Document No.";
    Editable = false;
    PageType = List;
    PopulateAllFields = true;
    RefreshOnActivate = true;
    ShowFilter = true;
    SourceTable = "Inv/CrMemo Table";

    layout
    {
        area(content)
        {
            repeater(Control1000000001)
            {
                field("Sales / Purchase"; "Sales / Purchase")
                {
                    Caption = 'Sales / Purchase';
                    Visible = VisibleProp;
                }
                field("Document No."; "Document No.")
                {
                    Caption = 'Document No.';
                    Importance = Promoted;
                    StyleExpr = AttentionStyleExpr;

                    trigger OnDrillDown();
                    begin
                        ShowDoc;
                    end;
                }
                field("Document Type"; "Document Type")
                {
                    Caption = 'Document Type';
                    Importance = Promoted;
                }
                field("Posting Date"; "Posting Date")
                {
                    Caption = 'Posting Date';
                }
                field("Due Date"; "Due Date")
                {
                    Caption = 'Due Date';
                    Importance = Promoted;
                }
                field("Cust/Vend No."; "Cust/Vend No.")
                {
                    Caption = 'Cust. / Vend. No.';

                    trigger OnDrillDown();
                    begin
                        if CustomerTable.GET("Cust/Vend No.") then begin
                            //  IF ("Sales / Purchase" = 0) THEN BEGIN
                            CustomerTable.SETFILTER("No.", '%1', "Cust/Vend No.");
                            CustomerPage.SETTABLEVIEW(CustomerTable);
                            CustomerPage.RUN;
                            //    END;
                        end;
                        if VendorTable.GET("Cust/Vend No.") then begin
                            //  IF ("Sales / Purchase" = 1)  THEN BEGIN
                            VendorTable.SETFILTER("No.", '%1', "Cust/Vend No.");
                            VendorPage.SETTABLEVIEW(VendorTable);
                            VendorPage.RUN;
                            //    END;
                        end;
                    end;
                }
                field("Cust/Vendor Name"; "Cust/Vendor Name")
                {
                    Caption = 'Customer / Vendor Name';
                    Importance = Promoted;
                }
                field("Currency Code"; "Currency Code")
                {
                    Caption = 'Currency Code';
                }
                field("Original Amount TCY"; "Original Amount TCY")
                {
                    Caption = 'Original Amount (TCY)';
                }
                field("Remaining Amount TCY"; "Remaining Amount TCY")
                {
                    Caption = 'Remaining Amount (TCY)';
                }
                field("Original Amount LCY"; "Original Amount LCY")
                {
                    Caption = 'Original Amount (LCY)';
                }
                field("Remaining Amount LCY"; "Remaining Amount LCY")
                {
                    Caption = 'Remaining Amount (LCY)';
                    Importance = Promoted;
                    StyleExpr = RemainingAttention;

                    trigger OnDrillDown();
                    begin
                        if ("Sales / Purchase" = 0) then begin
                            CustomerLedgEntryTable.SETFILTER("Document No.", '%1', "Document No.");
                            CustomerLedgEntryTable.FIND('-');
                            DetailedCustLedgEntryTable.SETFILTER("Cust. Ledger Entry No.", '%1', CustomerLedgEntryTable."Entry No.");
                            DetailedCustLedgEntryPage.SETTABLEVIEW(DetailedCustLedgEntryTable);
                            DetailedCustLedgEntryPage.RUN;
                        end;

                        if ("Sales / Purchase" = 1) then begin
                            VendorLedgEntryTable.SETFILTER("Document No.", '%1', "Document No.");
                            VendorLedgEntryTable.FIND('-');
                            DetailedVendLedgEntryTable.SETFILTER("Vendor Ledger Entry No.", '%1', VendorLedgEntryTable."Entry No.");
                            DetailedVendLedgEntryPage.SETTABLEVIEW(DetailedVendLedgEntryTable);
                            DetailedVendLedgEntryPage.RUN;
                        end;
                    end;
                }
            }
        }
        area(factboxes)
        {
            part(Control1000000019; BusinessManLegend)
            {
                ShowFilter = false;
                UpdatePropagation = Both;
            }
        }
    }

    actions
    {
        area(processing)
        {
            Description = 'Process';
            action(Navigate)
            {
                ApplicationArea = Basic, Suite;
                CaptionML = ENU = 'Navigate',
                            HUN = '&Navigálás',
                            DES = '&Navigate',
                            ITS = 'Navi&ga',
                            FRS = 'Na&viguer';
                Image = Navigate;
                Promoted = true;
                PromotedCategory = Process;
                //RunPageMode = Edit;
                Scope = Repeater;
                ToolTipML = ENU = 'Find all entries and documents that exist for the document number and posting date on the selected entry or document.',
                            DES = 'Sucht alle Posten und Belege, die für die Belegnummer und das Buchungsdatum auf dem ausgewählten Posten oder Beleg vorhanden sind.',
                            ITS = 'Trovare tutti i movimenti e i documenti esistenti per il numero di documento e la data di registrazione sul movimento o il documento selezionato.',
                            FRS = 'Recherchez toutes les écritures et tous les documents qui existent pour le numéro de document et la date comptabilisation sur l''écriture ou le document.';

                trigger OnAction();
                begin
                    Navigate.SetDoc(Rec."Posting Date", Rec."Document No.");
                    Navigate.RUN;
                end;
            }
            action("Show Posted Document")
            {
                ApplicationArea = Basic, Suite;
                CaptionML = ENU = 'Show Posted Document',
                            HUN = 'Könyvelt bizonylat megjelenítése',
                            DES = 'Gebuchten Beleg anzeigen',
                            ITS = 'Mostra documento reg.',
                            FRS = 'Afficher doc. enreg.';
                Image = Document;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ShortCutKey = 'Return';
                ToolTipML = ENU = 'Show details for the posted invoice or credit memo.',
                            DES = 'Zeigen Sie Details der gebuchten Rechnung oder Gutschrift an.',
                            ITS = 'Mostra i dettagli relativi a  fattura o nota di credito registrati.',
                            FRS = 'Affichez les détails pour la facture ou le paiement validé.';

                trigger OnAction();
                begin
                    ShowDoc;
                end;
            }
        }
    }

    trigger OnAfterGetCurrRecord();
    begin

        // IF FilterChanged THEN
        //  BEGIN
        //    TotalOrigAmtLCY :=0;
        //    TotalOrigAmtTCY :=0;
        //    TotalRemAmtLCY :=0;
        //    TotalRemAmtLCY :=0;
        //  LastRecFilter := Rec.GETFILTERS;
        //  CalcTotals;
        // //  SetVisibility;
        // END;
    end;

    trigger OnAfterGetRecord();
    begin
        ColorFormat;
    end;

    trigger OnInit();
    begin
        LastRecFilter := Rec.GETFILTERS;
    end;

    trigger OnOpenPage();
    begin

        SetVisibility;
    end;

    var
        SalesInvoicePage: Page "Posted Sales Invoice";
        SalesInvHeader: Record "Sales Invoice Header";
        SalesCrMemoPage: Page "Posted Sales Credit Memo";
        SalesCrMemoHeader: Record "Sales Cr.Memo Header";
        PurchaseInvoicePage: Page "Posted Purchase Invoice";
        PurchaseInvHeader: Record "Purch. Inv. Header";
        PurchaseCrMemoPage: Page "Posted Purchase Credit Memo";
        PurchaseCrMemoHeader: Record "Purch. Cr. Memo Hdr.";
        CustomerPage: Page "Customer Card";
        CustomerTable: Record Customer;
        VendorPage: Page "Vendor Card";
        VendorTable: Record Vendor;
        ContactPage: Page "Contact Card";
        ContactTable: Record Contact;
        AttentionStyleExpr: Text;
        [InDataSet]
        VisibleProp: Boolean;
        PageTitle: Text;
        TotalRemAmtTCY: Decimal;
        TotalRemAmtLCY: Decimal;
        TotalOrigAmtTCY: Decimal;
        TotalOrigAmtLCY: Decimal;
        LastRecFilter: Text;
        ShowTCY: Boolean;
        ShowLCY: Boolean;
        DetailedVendLedgEntryTable: Record "Detailed Vendor Ledg. Entry";
        DetailedVendLedgEntryPage: Page "Detailed Vendor Ledg. Entries";
        DetailedCustLedgEntryTable: Record "Detailed Cust. Ledg. Entry";
        DetailedCustLedgEntryPage: Page "Detailed Cust. Ledg. Entries";
        RemainingAttention: Text;
        Navigate: Page Navigate;
        Legend: Label 'Legend';
        Legend0: Label 'Overdue up to 30 days';
        Legend1: Label 'Overdue up to 60 days';
        Legend2: Label 'Overdue over 60 days';
        CustVendEntryNo: Integer;
        CustomerLedgEntryTable: Record "Cust. Ledger Entry";
        VendorLedgEntryTable: Record "Vendor Ledger Entry";
        TotalRemTCYCap: Label 'Total Remaining Amount (TCY)';
        TotalOrigTCYCap: Label 'Total Original Amount (TCY)';
        TotalRemLCYCAp: Label 'Total Remaining Amount (LCY)';
        TotalOrigLCYCap: Label 'Total Original Amount (LCY)';
        TotalFactBox: Page BusinessManLegend;

    procedure SetPageTitle();
    begin
    end;

    procedure CalcTotals(TOALCY: Integer; TRALCY: Integer; TOATCY: Integer; TRATCY: Integer);
    begin
        if Rec.FINDSET then repeat
                                TOALCY += Rec."Original Amount LCY";
                                TRALCY += Rec."Original Amount TCY";
                                TOATCY += Rec."Remaining Amount LCY";
                                TRATCY += Rec."Remaining Amount TCY";
            until Rec.NEXT = 0;
    end;

    procedure FilterChanged(): Boolean;
    begin
        if LastRecFilter <> Rec.GETFILTERS then begin
            LastRecFilter := Rec.GETFILTERS;
            exit(true);
        end else
            exit(false);
    end;

    local procedure SetVisibility();
    begin
        if (GETFILTER("Sales / Purchase") <> '') then begin
            VisibleProp := false;
            ShowLCY := true;
        end;

        if GETFILTER("Currency Code") <> '' then
            ShowTCY := true else
            ShowTCY := false;

        if Rec.FINDSET = false then
            ShowLCY := false;
        ShowTCY := false;
        CurrPage.UPDATE(true);
    end;

    procedure OnFilterChange();
    begin
        // CalcTotals(TotalFactBox.TOALCY,TotalFactBox.TRALCY,TotalFactBox.TOATCY,TotalFactBox.TRATCY);
    end;

    local procedure ColorFormat();
    begin
        if ("Due Date" < WORKDATE) and ("Due Date" >= CALCDATE('<-1M>', WORKDATE)) then
            AttentionStyleExpr := 'Favorable'
        else
            if ("Due Date" < CALCDATE('<-1M>', WORKDATE)) and ("Due Date" >= CALCDATE('<-2M>', WORKDATE)) then
                AttentionStyleExpr := 'Ambiguous'
            else
                if ("Due Date" < CALCDATE('<-2M>', WORKDATE)) then
                    AttentionStyleExpr := 'Attention'
                else
                    AttentionStyleExpr := 'Standard';


        if ("Remaining Amount LCY" <> "Original Amount LCY") and ("Remaining Amount LCY" <> 0) then
            RemainingAttention := 'StandardAccent'
        else
            RemainingAttention := '';
    end;

    local procedure ShowDoc();
    begin
        if ("Sales / Purchase" = 0) and ("Document Type" = 0) then begin
            SalesInvHeader.SETFILTER("No.", '%1', "Document No.");
            SalesInvoicePage.SETTABLEVIEW(SalesInvHeader);
            SalesInvoicePage.RUN;
        end;
        if ("Sales / Purchase" = 0) and ("Document Type" = 1) then begin
            SalesCrMemoHeader.SETFILTER("No.", '%1', "Document No.");
            SalesCrMemoPage.SETTABLEVIEW(SalesCrMemoHeader);
            SalesCrMemoPage.RUN;
        end;
        if ("Sales / Purchase" = 1) and ("Document Type" = 0) then begin
            PurchaseInvHeader.SETFILTER("No.", '%1', "Document No.");
            PurchaseInvoicePage.SETTABLEVIEW(PurchaseInvHeader);
            PurchaseInvoicePage.RUN;
        end;
        if ("Sales / Purchase" = 1) and ("Document Type" = 1) then begin
            PurchaseCrMemoHeader.SETFILTER("No.", '%1', "Document No.");
            PurchaseCrMemoPage.SETTABLEVIEW(PurchaseCrMemoHeader);
            PurchaseCrMemoPage.RUN;
        end;
    end;
}

