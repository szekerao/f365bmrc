page 70700006 "FIN365 Approvals"
{
    // version F365.RC1.W110.00

    Editable = false;
    PageType = ListPart;
    SourceTable = "Approval Entry";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Document Type"; "Document Type")
                {
                }
                field("Document No."; "Document No.")
                {

                    trigger OnDrillDown();
                    begin
                        SalesInvHeader.SETFILTER("No.", '%1', "Document No.");
                        if SalesInvHeader.FINDSET then begin
                            SalesCrMemoPage.SETTABLEVIEW(SalesCrMemoHeader);
                            SalesInvPage.RUN;
                        end else SalesCrMemoHeader.SETFILTER("No.", '%1', "Document No.");
                        if SalesCrMemoHeader.FINDSET then begin
                            SalesCrMemoPage.SETTABLEVIEW(SalesCrMemoHeader);
                            SalesCrMemoPage.RUN;
                        end else PurchaseInvHeader.SETFILTER("No.", '%1', "Document No.");
                        if PurchaseInvHeader.FINDSET then begin
                            PurchaseInvPage.SETTABLEVIEW(PurchaseInvHeader);
                            PurchaseInvPage.RUN;
                        end else PurchaseCrMemoHeader.SETFILTER("No.", '%1', "Document No.");
                        if PurchaseCrMemoHeader.FINDSET then begin
                            PurchaseCrMemoPage.SETTABLEVIEW(PurchaseCrMemoHeader);
                            PurchaseCrMemoPage.RUN;
                        end;
                    end;
                }
                field("Pending Approvals"; "Pending Approvals")
                {
                }
                field("Sender ID"; "Sender ID")
                {
                }
                field("Approver ID"; "Approver ID")
                {
                }
                field("Due Date"; "Due Date")
                {
                }
                field("Amount (LCY)"; "Amount (LCY)")
                {
                }
            }
        }
    }

    actions
    {
    }

    trigger OnFindRecord(Which: Text): Boolean;
    begin
        SETFILTER("Pending Approvals", '<0');
    end;

    var
        SalesInvHeader: Record "Sales Invoice Header";
        SalesInvPage: Page "Sales Invoice";
        SalesCrMemoHeader: Record "Sales Cr.Memo Header";
        SalesCrMemoPage: Page "Sales Credit Memo";
        PurchaseInvHeader: Record "Purch. Inv. Header";
        PurchaseInvPage: Page "Purchase Invoice";
        PurchaseCrMemoHeader: Record "Purch. Cr. Memo Hdr.";
        PurchaseCrMemoPage: Page "Purchase Credit Memo";
}

