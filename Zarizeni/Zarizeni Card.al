page 50102 "Zarizeni_card"
{
    PageType = Card;
    SourceTable = Zarizeni_tab;
    Caption = 'Zařízení';

    layout
    {
        area(Content)
        {
            group(Obecné)
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
                    NotBlank = true;
                }
            }

            group(Detaily)
            {
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }

                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        if Rec.Amount < 0 then begin
                            Message('Množství nemůže být záporné!');
                            Rec.Amount := 0;
                        end;
                    end;
                }
            }
        }
    }
    //trigger OnQueryClosePage(CloseAction: Action): Boolean
    //begin
    //  Rec.TestField(Name);
    //end;
}