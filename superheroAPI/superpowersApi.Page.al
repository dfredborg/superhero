namespace Fredborg.Superheroes.API;
using Fredborg.Superheroes.Superhero;

page 50108 superpowersApi
{
    APIGroup = 'superheroes';
    APIPublisher = 'fredborg';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'superpowersApi';
    DelayedInsert = true;
    EntityName = 'superPower';
    EntitySetName = 'superPowers';
    PageType = API;
    SourceTable = SuperPowers;
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
