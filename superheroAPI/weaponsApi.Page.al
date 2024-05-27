namespace Fredborg.Superheroes.API;
using Fredborg.Superheroes.Superhero;

page 50109 weaponsApi
{
    APIGroup = 'superheroes';
    APIPublisher = 'fredborg';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'weaponsApi';
    DelayedInsert = true;
    EntityName = 'weapon';
    EntitySetName = 'weapons';
    PageType = API;
    SourceTable = Weapon;
    ODataKeyFields = SystemId;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("code"; Rec."Code")
                {
                }
                field(description; Rec.Description)
                {
                }
                field(powerRating; Rec."Power Rating")
                {
                }
                field(systemId; Rec.SystemId)
                {
                }
            }
        }
    }
}
