page 50101 "Zarizeni_page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Zarizeni_tab;
    CardPageId = "Zarizeni_card";
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
    actions
    {
        area(Processing)
        {
            action("Můj report")
            {
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;
                trigger OnAction()
                begin
                    report.Run(Report::Zarizeni_report);
                end;
            }
        }
    }
}