report 50104 "Zarizeni_report"
{
    DefaultLayout = Word;
    WordLayout = 'Zarizeni_report.docx';
    Caption = 'Můj report';

    dataset
    {
        dataitem(Zarizeni_tab; Zarizeni_tab)
        {
            column(No; No)
            { }
            column(Name; Name)
            { }
            column(Description; Description)
            { }
            column(Amount; Amount)
            { }
        }
    }
}