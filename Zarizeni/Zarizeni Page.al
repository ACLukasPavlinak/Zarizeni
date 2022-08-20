page 50101 "Zarizeni_page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Zarizeni_tab;
    Caption = 'Dostupná zařízení';

    layout
    {
        area(Content)
        {
            repeater(group)
            {
                field(No; Rec.No)
                {
                    ApplicationArea = All;
                    Editable = false;
                    Style = Strong;
                }

                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }

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

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    begin
        Rec.TestField(Name);
    end;
}