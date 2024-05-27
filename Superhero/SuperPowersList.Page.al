namespace Fredborg.Superheroes.Superhero;

using Fredborg.Superheroes.Superhero;

page 50103 SuperPowersList
{
    ApplicationArea = All;
    Caption = 'Super Powers';
    PageType = List;
    SourceTable = SuperPowers;
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
