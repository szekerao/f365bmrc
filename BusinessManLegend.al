page 50102 BusinessManLegend
{
    // version F365.RC1.1.W110.00

    Caption = 'Legend';
    PageType = CardPart;

    layout
    {
        area(content)
        {
            field(Legend0; Legend0)
            {
                Style = Favorable;
                StyleExpr = TRUE;
            }
            field(Legend1; Legend1)
            {
                Style = Ambiguous;
                StyleExpr = TRUE;
            }
            field(Legend2; Legend2)
            {
                Style = Attention;
                StyleExpr = TRUE;
            }
        }
    }

    actions
    {
    }

    var
        MainPage: Page "Inv&CrMemo Page";
        Legend: Label 'Legend';
        Legend0: Label 'Overdue up to 30 days';
        Legend1: Label 'Overdue up to 60 days';
        Legend2: Label 'Overdue over 60 days';
}

