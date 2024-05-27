namespace Fredborg.Superheroes.Superhero;
page 50106 "Superhero Subpage"
{
    ApplicationArea = All;
    Caption = 'Superhero Subpage';
    PageType = ListPart;
    SourceTable = SuperheroLine;
    AutoSplitKey = true;
    DelayedInsert = true;
    MultipleNewLines = true;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Type"; Rec."Type")
                {
                }
                field("Code"; Rec."Code")
                {
                }
                field(Description; Rec.Description)
                {
                }
                field("Power Rating"; Rec."Power Rating")
                {
                }
            }
        }
    }
}
