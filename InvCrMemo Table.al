table 70700005 "Inv/CrMemo Table"
{
    // version F365.RC1.W110.00


    fields
    {
        field(10; "Sales / Purchase"; Option)
        {
            OptionMembers = Sales,Purchase;
        }
        field(20; "Document Type"; Option)
        {
            OptionMembers = Invoice,"Credit Memo";
        }
        field(30; "Document No."; Text[30])
        {
        }
        field(40; "Posting Date"; Date)
        {
        }
        field(50; "Due Date"; Date)
        {
        }
        field(60; "Cust/Vend No."; Code[20])
        {
        }
        field(70; "Cust/Vendor Name"; Text[50])
        {
        }
        field(80; "Remaining Amount TCY"; Decimal)
        {
        }
        field(90; "Remaining Amount LCY"; Decimal)
        {
        }
        field(100; "Original Amount TCY"; Decimal)
        {
        }
        field(110; "Original Amount LCY"; Decimal)
        {
        }
        field(120; "Currency Factor"; Decimal)
        {
        }
        field(130; "Currency Code"; Code[10])
        {
        }
    }

    keys
    {
        key(Key1; "Document No.")
        {
        }
    }

    fieldgroups
    {
    }

    procedure MigrateData();
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
        SalesCrMemoHeader: Record "Sales Cr.Memo Header";
        PurchInvoiceHeader: Record "Purch. Inv. Header";
        PurchCrMemoHeader: Record "Purch. Cr. Memo Hdr.";
    begin
        // SalesInvoiceHeader.SETFILTER(Closed, '1');
        if SalesInvoiceHeader.FINDSET then repeat

                                               Rec."Sales / Purchase" := 0;
                                               Rec."Document Type" := 0;
                                               Rec."Document No." := SalesInvoiceHeader."No.";
                                               Rec."Posting Date" := SalesInvoiceHeader."Posting Date";
                                               Rec."Due Date" := SalesInvoiceHeader."Due Date";
                                               Rec."Cust/Vend No." := SalesInvoiceHeader."Bill-to Customer No.";
                                               Rec."Cust/Vendor Name" := SalesInvoiceHeader."Bill-to Name";
                                               SalesInvoiceHeader.CALCFIELDS("Remaining Amount");
                                               SalesInvoiceHeader.CALCFIELDS("Amount Including VAT");
                                               Rec."Remaining Amount TCY" := SalesInvoiceHeader."Remaining Amount";
                                               Rec."Original Amount TCY" := SalesInvoiceHeader."Amount Including VAT";
                                               Rec."Currency Code" := SalesInvoiceHeader."Currency Code";
                                               if SalesInvoiceHeader."Currency Code" = '' then
                                                   Rec."Currency Factor" := 1 else
                                                   Rec."Currency Factor" := SalesInvoiceHeader."Currency Factor";
                                               Rec."Remaining Amount LCY" := (SalesInvoiceHeader."Remaining Amount" / Rec."Currency Factor");
                                               Rec."Original Amount LCY" := (SalesInvoiceHeader."Amount Including VAT" / Rec."Currency Factor");
                                               Rec.INSERT;
            until SalesInvoiceHeader.NEXT = 0;

        // SalesCrMemoHeader.SETFILTER(Paid,'0');
        if SalesCrMemoHeader.FINDSET then repeat
                                              Rec."Sales / Purchase" := 0;
                                              Rec."Document Type" := 1;
                                              Rec."Document No." := SalesCrMemoHeader."No.";
                                              Rec."Posting Date" := SalesCrMemoHeader."Posting Date";
                                              Rec."Due Date" := SalesCrMemoHeader."Due Date";
                                              Rec."Cust/Vend No." := SalesCrMemoHeader."Bill-to Customer No.";
                                              Rec."Cust/Vendor Name" := SalesCrMemoHeader."Bill-to Name";
                                              SalesCrMemoHeader.CALCFIELDS("Remaining Amount");
                                              SalesCrMemoHeader.CALCFIELDS("Amount Including VAT");
                                              Rec."Remaining Amount TCY" := SalesCrMemoHeader."Remaining Amount";
                                              Rec."Original Amount TCY" := -SalesCrMemoHeader."Amount Including VAT";
                                              Rec."Currency Code" := SalesCrMemoHeader."Currency Code";
                                              if SalesCrMemoHeader."Currency Code" = '' then
                                                  Rec."Currency Factor" := 1 else
                                                  Rec."Currency Factor" := SalesCrMemoHeader."Currency Factor";
                                              Rec."Remaining Amount LCY" := (SalesCrMemoHeader."Remaining Amount" / Rec."Currency Factor");
                                              Rec."Original Amount LCY" := -(SalesCrMemoHeader."Amount Including VAT" / Rec."Currency Factor");
                                              Rec.INSERT;

            until SalesCrMemoHeader.NEXT = 0;

        // PurchInvoiceHeader.SETFILTER(Closed, '1');
        if PurchInvoiceHeader.FINDSET then repeat
                                               Rec."Sales / Purchase" := 1;
                                               Rec."Document Type" := 0;
                                               Rec."Document No." := PurchInvoiceHeader."No.";
                                               Rec."Posting Date" := PurchInvoiceHeader."Posting Date";
                                               Rec."Due Date" := PurchInvoiceHeader."Due Date";
                                               Rec."Cust/Vend No." := PurchInvoiceHeader."Buy-from Vendor No.";
                                               Rec."Cust/Vendor Name" := PurchInvoiceHeader."Buy-from Vendor Name";
                                               PurchInvoiceHeader.CALCFIELDS("Remaining Amount");
                                               PurchInvoiceHeader.CALCFIELDS("Amount Including VAT");
                                               Rec."Remaining Amount TCY" := PurchInvoiceHeader."Remaining Amount";
                                               Rec."Original Amount TCY" := PurchInvoiceHeader."Amount Including VAT";
                                               Rec."Currency Code" := PurchInvoiceHeader."Currency Code";
                                               if PurchInvoiceHeader."Currency Code" = '' then
                                                   Rec."Currency Factor" := 1 else
                                                   Rec."Currency Factor" := PurchInvoiceHeader."Currency Factor";
                                               Rec."Remaining Amount LCY" := (PurchInvoiceHeader."Remaining Amount" / Rec."Currency Factor");
                                               Rec."Original Amount LCY" := (PurchInvoiceHeader."Amount Including VAT" / Rec."Currency Factor");
                                               Rec.INSERT;

            until PurchInvoiceHeader.NEXT = 0;

        // PurchCrMemoHeader.SETFILTER(Paid, '0');
        if PurchCrMemoHeader.FINDSET then repeat
                                              Rec."Sales / Purchase" := 1;
                                              Rec."Document Type" := 1;
                                              Rec."Document No." := PurchCrMemoHeader."No.";
                                              Rec."Posting Date" := PurchCrMemoHeader."Posting Date";
                                              Rec."Due Date" := PurchCrMemoHeader."Due Date";
                                              Rec."Cust/Vend No." := PurchCrMemoHeader."Buy-from Vendor No.";
                                              Rec."Cust/Vendor Name" := PurchCrMemoHeader."Buy-from Vendor Name";
                                              PurchCrMemoHeader.CALCFIELDS("Remaining Amount");
                                              PurchCrMemoHeader.CALCFIELDS("Amount Including VAT");
                                              Rec."Remaining Amount TCY" := PurchCrMemoHeader."Remaining Amount";
                                              Rec."Original Amount TCY" := -PurchCrMemoHeader."Amount Including VAT";
                                              Rec."Currency Code" := PurchCrMemoHeader."Currency Code";
                                              if PurchCrMemoHeader."Currency Code" = '' then
                                                  Rec."Currency Factor" := 1 else
                                                  Rec."Currency Factor" := PurchCrMemoHeader."Currency Factor";
                                              Rec."Remaining Amount LCY" := (PurchCrMemoHeader."Remaining Amount" / Rec."Currency Factor");
                                              Rec."Original Amount LCY" := -(PurchCrMemoHeader."Amount Including VAT" / Rec."Currency Factor");
                                              Rec.INSERT;

            until PurchCrMemoHeader.NEXT = 0;
    end;
}

