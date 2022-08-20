page 50102 "Zarizeni_card"
{
    PageType = Card;
    SourceTable = Zarizeni_tab;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(No; Rec.No)
                {
                    ApplicationArea = All;
                }

                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
            }

            group(Details)
            {
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }

                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}