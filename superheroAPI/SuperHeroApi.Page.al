namespace Fredborg.Superheroes.API;
using Fredborg.Superheroes.Superhero;

page 50100 SuperHeroApi
{
    APIGroup = 'superheroes';
    APIPublisher = 'fredborg';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'superHeroApi';
    DelayedInsert = true;
    EntityName = 'superhero';
    EntitySetName = 'superheroes';
    PageType = API;
    SourceTable = SuperHero;
    ODataKeyFields = SystemId;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(systemId; Rec.SystemId)
                {
                }
                field(name; Rec.Name)
                {
                }
                field(description; Rec.Description)
                {
                }
                field(agility; Rec.Agility)
                {
                }
                field(intelligence; Rec.Intelligence)
                {
                }
                field(speed; Rec.Speed)
                {
                }
                field(strength; Rec.Strength)
                {
                }
                field(powerRating; Rec.PowerRating)
                {
                }
                part(lines; superheroLinesAPI)
                {
                    EntityName = 'superheroLine';
                    EntitySetName = 'superheroLines';
                    SubPageLink = SuperHeroId = field("SystemId");
                }
                field(profilePicture; Rec.GetProfilePictureBase64())
                {
                }
            }
        }
    }
}
