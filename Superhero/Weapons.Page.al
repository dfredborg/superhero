namespace Fredborg.Superheroes.Superhero;

page 50104 Weapons
{
    ApplicationArea = All;
    Caption = 'Weapons';
    PageType = List;
    SourceTable = Weapon;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    InstructionalText = 'Specifies the value of the Code field.';
                }
                field(Description; Rec.Description)
                {
                    InstructionalText = 'Specifies the value of the Description field.';
                }
                field("Power Rating"; Rec."Power Rating")
                {
                }
            }
        }
    }
}
