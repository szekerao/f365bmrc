page 50101 "FIN365 Business Manager Cue"
{
    // version F365.RC1.W110.00

    Caption = 'FIN365 Business Manager';
    PageType = CardPart;
    RefreshOnActivate = true;
    ShowFilter = false;
    SourceTable = "Inv/CrMemo Table";

    layout
    {
        area(content)
        {
            cuegroup(Sales)
            {
                Caption = 'Sales';
                field("Year To Date - Sales"; "YTD - Sales")
                {
                    AssistEdit = true;
                    Caption = 'Year To Date';
                    DecimalPlaces = 0 : 0;
                    Image = Calculator;
                    ToolTip = 'Sales from the beginning of this year.';

                    trigger OnDrillDown();
                    begin
                        InvCrMemoTable.SETRANGE("Posting Date", CALCDATE('<-CY>', WORKDATE), WORKDATE);
                        InvCrMemoTable.SETFILTER("Sales / Purchase", '0');
                        InvCrMemoPage.SETTABLEVIEW(InvCrMemoTable);
                        InvCrMemoPage.RUN;
                    end;
                }
                field("Last Month To Date - Sales"; "Last Month to Date - Sales")
                {
                    AssistEdit = true;
                    Caption = 'Last Month To Date';
                    DecimalPlaces = 0 : 0;
                    Image = Cash;
                    ToolTip = 'Sales since the beginning of last month.';

                    trigger OnDrillDown();
                    begin

                        InvCrMemoTable.SETRANGE("Posting Date", CALCDATE('<-CM-1M>', WORKDATE), WORKDATE);
                        InvCrMemoTable.SETFILTER("Sales / Purchase", '0');
                        InvCrMemoPage.CAPTION('Last Month To Date - Sales');
                        InvCrMemoPage.SETTABLEVIEW(InvCrMemoTable);
                        InvCrMemoPage.RUN;
                    end;
                }
                field("Overdue - Sales"; "Overdue - Sales")
                {
                    Caption = 'Overdue';
                    DecimalPlaces = 0 : 0;
                    Image = Time;
                    ToolTip = 'Sales with overdue amount.';

                    trigger OnDrillDown();
                    begin
                        InvCrMemoTable.SETFILTER("Due Date", '<%1', WORKDATE);
                        InvCrMemoTable.SETFILTER("Sales / Purchase", '0');
                        InvCrMemoTable.SETFILTER("Remaining Amount LCY", '<>0');
                        InvCrMemoPage.SETTABLEVIEW(InvCrMemoTable);
                        InvCrMemoPage.RUN;
                        InvCrMemoTable.RESET;
                    end;
                }
                field("Due Next Week - Sales"; "Due Next Week - Sales")
                {
                    Caption = 'Due Next Week';
                    DecimalPlaces = 0 : 0;
                    Image = Calendar;
                    ToolTip = 'Sales with Due Date expiring next week.';

                    trigger OnDrillDown();
                    begin
                        InvCrMemoTable.SETRANGE("Due Date", WORKDATE, CALCDATE('<+CW+1W>', WORKDATE));
                        InvCrMemoTable.SETFILTER("Sales / Purchase", '0');
                        InvCrMemoTable.SETFILTER("Remaining Amount LCY", '<>0');
                        InvCrMemoPage.SETTABLEVIEW(InvCrMemoTable);
                        InvCrMemoPage.RUN;
                        InvCrMemoTable.RESET;
                    end;
                }

                actions
                {
                    action("Customer - Top10 List")
                    {
                        RunObject = Report "Customer - Top 10 List";
                        RunPageMode = View;
                    }
                    separator(Separator1000000019)
                    {
                    }
                    action("Customer - Detailed Trial Balance")
                    {
                        RunObject = Report "Customer - Detail Trial Bal.";
                        RunPageMode = View;
                    }
                    action("Customer - Balance to Date")
                    {
                        RunObject = Report "Customer - Balance to Date";
                        RunPageMode = View;
                    }
                    action("Aged Accounts Receivable")
                    {
                        RunObject = Report "Aged Accounts Receivable";
                        RunPageMode = View;
                    }
                }
            }
            cuegroup(Purchases)
            {
                Caption = 'Purchases';
                field("Year To Date - Purchases"; "YTD - Purchases")
                {
                    Caption = 'Year To Date';
                    DecimalPlaces = 0 : 0;
                    Image = Calculator;
                    ToolTip = 'Purchases from the beginning of this year.';

                    trigger OnDrillDown();
                    begin
                        InvCrMemoTable.SETRANGE("Posting Date", CALCDATE('<-CY>', WORKDATE), WORKDATE);
                        InvCrMemoTable.SETFILTER("Sales / Purchase", '1');
                        InvCrMemoPage.SETTABLEVIEW(InvCrMemoTable);
                        InvCrMemoPage.RUN;
                        InvCrMemoTable.RESET;
                    end;
                }
                field("Last Month To Date - Purchases"; "Last Month to Date - Purchases")
                {
                    Caption = 'Last Month To Date';
                    DecimalPlaces = 0 : 0;
                    Image = Cash;
                    ToolTip = 'Purchases since the beginning of last month.';

                    trigger OnDrillDown();
                    begin
                        InvCrMemoTable.SETRANGE("Posting Date", CALCDATE('<-CM-1M>', WORKDATE), WORKDATE);
                        InvCrMemoTable.SETFILTER("Sales / Purchase", '1');
                        InvCrMemoPage.SETTABLEVIEW(InvCrMemoTable);
                        InvCrMemoPage.RUN;
                        InvCrMemoTable.RESET;
                    end;
                }
                field("Overdue - Purchases"; "Overdue - Purchases")
                {
                    Caption = 'Overdue';
                    DecimalPlaces = 0 : 0;
                    Image = Time;
                    ToolTip = 'Purchases with overdue amount.';

                    trigger OnDrillDown();
                    begin
                        InvCrMemoTable.SETFILTER("Due Date", '<%1', WORKDATE);
                        InvCrMemoTable.SETFILTER("Sales / Purchase", '1');
                        InvCrMemoTable.SETFILTER("Remaining Amount LCY", '<>0');
                        InvCrMemoPage.SETTABLEVIEW(InvCrMemoTable);
                        InvCrMemoPage.RUN;
                        InvCrMemoTable.RESET;
                    end;
                }
                field("Due Next Week - Purchases"; "Due Next Week - Purchases")
                {
                    Caption = 'Due Next Week';
                    DecimalPlaces = 0 : 0;
                    Image = Calendar;
                    ToolTip = 'Purchases with Due Date expiring next week.';

                    trigger OnDrillDown();
                    begin
                        InvCrMemoTable.SETRANGE("Due Date", WORKDATE, CALCDATE('<+CW+1W>', WORKDATE));
                        InvCrMemoTable.SETFILTER("Sales / Purchase", '1');
                        InvCrMemoTable.SETFILTER("Remaining Amount LCY", '<>0');
                        InvCrMemoPage.SETTABLEVIEW(InvCrMemoTable);
                        InvCrMemoPage.RUN;
                        InvCrMemoTable.RESET;
                    end;
                }

                actions
                {
                    action("Vendor - Top10 List")
                    {
                        RunObject = Report "Vendor - Top 10 List";
                        RunPageMode = View;
                    }
                    separator(Separator1000000023)
                    {
                    }
                    action("Vendor - Detailed Trial Balance")
                    {
                        RunObject = Report "Vendor - Detail Trial Balance";
                        RunPageMode = View;
                    }
                    action("Vendor - Balance to Date")
                    {
                        RunObject = Report "Vendor - Balance to Date";
                        RunPageMode = View;
                    }
                    action("Aged Accounts Payable")
                    {
                        RunObject = Report "Aged Accounts Payable";
                        RunPageMode = View;
                    }
                }
            }
            cuegroup("On Hold")
            {
                field("On Hold Sales"; "On Hold Sales")
                {
                    ToolTip = 'Sales Documents on hold.';

                    trigger OnDrillDown();
                    begin
                        CustomerLedgerEntryTable.SETFILTER("On Hold", '<>%1', '');
                        CustomerLedgerEntryPage.SETTABLEVIEW(CustomerLedgerEntryTable);
                        CustomerLedgerEntryPage.RUN;
                        InvCrMemoTable.RESET;
                    end;
                }
                field("On Hold Purchases"; "On Hold Purchases")
                {
                    ToolTip = 'Purchase Documents on hold.';

                    trigger OnDrillDown();
                    begin
                        VendorLedgerEntryTable.SETFILTER("On Hold", '<>%1', '');
                        VendorLedgerEntryPage.SETTABLEVIEW(VendorLedgerEntryTable);
                        VendorLedgerEntryPage.RUN;
                        InvCrMemoTable.RESET;
                    end;
                }
            }
        }
    }

    actions
    {
    }

    trigger OnAfterGetCurrRecord();
    begin
        CalcAll;
    end;

    trigger OnClosePage();
    begin
        CalcAll;
    end;

    trigger OnInit();
    begin
        DELETEALL;
    end;

    trigger OnOpenPage();
    begin
        RESET;
        if not GET then begin
            INIT;
            INSERT;
        end;
        MigrateData;
        InvCrMemoTable.SETFILTER("Remaining Amount TCY", '<>0')
    end;

    var
        InvCrMemoPage: Page "Inv&CrMemo Page";
        InvCrMemoTable: Record "Inv/CrMemo Table";
        "Last Month to Date - Sales": Decimal;
        "Last Month to Date - Purchases": Decimal;
        "YTD - Sales": Decimal;
        "YTD - Purchases": Decimal;
        "Overdue - Sales": Decimal;
        "Overdue - Purchases": Decimal;
        "Due Next Week - Sales": Decimal;
        "Due Next Week - Purchases": Decimal;
        "On Hold Sales": Integer;
        "On Hold Purchases": Integer;
        AttentionStyleExpr: Text;
        SalesInvHeader: Record "Sales Invoice Header";
        SalesInvoicePage: Page "Posted Sales Invoice";
        SalesCrMemoHeader: Record "Sales Cr.Memo Header";
        SalesCrMemoPage: Page "Posted Sales Credit Memo";
        PurchaseInvoiceHeader: Record "Purch. Inv. Header";
        PurchaseInvoicePage: Page "Posted Purchase Invoice";
        PurchaseCrMemoHeader: Record "Purch. Cr. Memo Hdr.";
        PurchaseCrMemoPage: Page "Posted Purchase Credit Memo";
        CustomerPage: Page "Customer Card";
        CustomerTable: Record Customer;
        VendorPage: Page "Vendor Card";
        VendorTable: Record Vendor;
        ContactPage: Page "Contact Card";
        ContactTable: Record Contact;
        VendorLedgerEntryPage: Page "Vendor Ledger Entries";
        VendorLedgerEntryTable: Record "Vendor Ledger Entry";
        CustomerLedgerEntryPage: Page "Customer Ledger Entries";
        CustomerLedgerEntryTable: Record "Cust. Ledger Entry";

    procedure CalcLMToDateSales() LMToDateSales: Decimal;
    begin
        InvCrMemoTable.SETRANGE("Posting Date", CALCDATE('<-CM-1M>', WORKDATE), WORKDATE);
        InvCrMemoTable.SETFILTER("Sales / Purchase", '0');
        LMToDateSales := 0;
        if InvCrMemoTable.FINDSET then repeat

                                           LMToDateSales += InvCrMemoTable."Original Amount LCY";

            until InvCrMemoTable.NEXT = 0;
        InvCrMemoTable.RESET;
    end;

    procedure CalcYTDSales() YTDSales: Decimal;
    begin
        InvCrMemoTable.SETRANGE("Posting Date", CALCDATE('<-CY>', WORKDATE), WORKDATE);
        InvCrMemoTable.SETFILTER("Sales / Purchase", '0');
        YTDSales := 0;
        if InvCrMemoTable.FINDSET then repeat

                                           YTDSales += InvCrMemoTable."Original Amount LCY";

            until InvCrMemoTable.NEXT = 0;
        InvCrMemoTable.RESET;
    end;

    procedure CalcLMToDatePurch() LMToDatePurch: Decimal;
    begin
        InvCrMemoTable.SETRANGE("Posting Date", CALCDATE('<-CM-1M>', WORKDATE), WORKDATE);
        InvCrMemoTable.SETFILTER("Sales / Purchase", '1');
        LMToDatePurch := 0;
        if InvCrMemoTable.FINDSET then repeat

                                           LMToDatePurch += InvCrMemoTable."Original Amount LCY";

            until InvCrMemoTable.NEXT = 0;
        InvCrMemoTable.RESET;
    end;

    procedure CalcYTDPurch() YTDPurch: Decimal;
    begin
        InvCrMemoTable.SETRANGE("Posting Date", CALCDATE('<-CY>', WORKDATE), WORKDATE);
        InvCrMemoTable.SETFILTER("Sales / Purchase", '1');
        YTDPurch := 0;
        if InvCrMemoTable.FINDSET then repeat

                                           YTDPurch += InvCrMemoTable."Original Amount LCY";

            until InvCrMemoTable.NEXT = 0;
        InvCrMemoTable.RESET;
    end;

    procedure CalcOverdueSales() OverdueSales: Decimal;
    begin
        InvCrMemoTable.SETFILTER("Due Date", '<%1', WORKDATE);
        InvCrMemoTable.SETFILTER("Sales / Purchase", '0');
        OverdueSales := 0;
        if InvCrMemoTable.FINDSET then repeat

                                           OverdueSales += InvCrMemoTable."Remaining Amount LCY";

            until InvCrMemoTable.NEXT = 0;
        InvCrMemoTable.RESET;
    end;

    procedure CalcOverduePurch() OverduePurch: Decimal;
    begin
        InvCrMemoTable.SETFILTER("Due Date", '<%1', WORKDATE);
        InvCrMemoTable.SETFILTER("Sales / Purchase", '1');
        OverduePurch := 0;
        if InvCrMemoTable.FINDSET then repeat

                                           OverduePurch += InvCrMemoTable."Remaining Amount LCY";

            until InvCrMemoTable.NEXT = 0;
        InvCrMemoTable.RESET;
    end;

    procedure CalcNextWeekDueSales() DueNextWeekSales: Decimal;
    begin
        InvCrMemoTable.SETFILTER("Due Date", '%1..%2', WORKDATE, CALCDATE('<+CW+1W>', WORKDATE));
        InvCrMemoTable.SETFILTER("Sales / Purchase", '0');
        DueNextWeekSales := 0;
        if InvCrMemoTable.FINDSET then repeat

                                           DueNextWeekSales += InvCrMemoTable."Remaining Amount LCY";

            until InvCrMemoTable.NEXT = 0;
        InvCrMemoTable.RESET;
    end;

    procedure CalcNextWeekDuePurch() DueNextWeekPurch: Decimal;
    begin
        InvCrMemoTable.SETFILTER("Due Date", '%1..%2', WORKDATE, CALCDATE('<+CW+1W>', WORKDATE));
        InvCrMemoTable.SETFILTER("Sales / Purchase", '1');
        DueNextWeekPurch := 0;
        if InvCrMemoTable.FINDSET then repeat

                                           DueNextWeekPurch += InvCrMemoTable."Remaining Amount LCY";

            until InvCrMemoTable.NEXT = 0;
        InvCrMemoTable.RESET;
    end;

    procedure CalcOnHoldSales() OnHoldSales: Integer;
    begin
        CustomerLedgerEntryTable.SETFILTER("On Hold", '<>%1', '');
        OnHoldSales := 0;
        if CustomerLedgerEntryTable.FINDSET then repeat
                                                     OnHoldSales += 1;
            until CustomerLedgerEntryTable.NEXT = 0;
        CustomerLedgerEntryTable.RESET;
    end;

    procedure CalcOnHoldPurchases() OnHoldPurchase: Integer;
    begin
        VendorLedgerEntryTable.SETFILTER("On Hold", '<>%1', '');
        OnHoldPurchase := 0;
        if VendorLedgerEntryTable.FINDSET then repeat

                                                   OnHoldPurchase += 1;

            until VendorLedgerEntryTable.NEXT = 0;
        VendorLedgerEntryTable.RESET;
    end;

    procedure CalcAll();
    begin
        Rec.RESET;
        "Last Month to Date - Sales" := CalcLMToDateSales;
        "Last Month to Date - Purchases" := CalcLMToDatePurch;
        "YTD - Sales" := CalcYTDSales;
        "YTD - Purchases" := CalcYTDPurch;
        "Overdue - Sales" := CalcOverdueSales;
        "Overdue - Purchases" := CalcOverduePurch;
        "Due Next Week - Sales" := CalcNextWeekDueSales;
        "Due Next Week - Purchases" := CalcNextWeekDuePurch;
        "On Hold Sales" := CalcOnHoldSales;
        "On Hold Purchases" := CalcOnHoldPurchases;
    end;
}

