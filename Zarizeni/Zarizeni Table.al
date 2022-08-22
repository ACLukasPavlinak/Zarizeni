table 50100 "Zarizeni_tab"
{
    DataClassification = ToBeClassified;
    Caption = 'Zařízení';
    DrillDownPageId = "Zarizeni_page";
    LookupPageId = "Zarizeni_page";
    DataCaptionFields = No, Name;


    fields
    {
        field(1; No; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            Caption = 'Číslo zařízení';
        }

        field(2; Name; Text[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'Název zařízení';
        }
        field(3; Description; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Popis';
        }
        field(4; Amount; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Dostupné množství';
        }
    }

    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }
}