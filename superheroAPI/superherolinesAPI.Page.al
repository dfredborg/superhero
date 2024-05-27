namespace Fredborg.Superheroes.API;
using Fredborg.Superheroes.Superhero;

page 50107 superherolinesAPI
{
    APIGroup = 'superheroes';
    APIPublisher = 'fredborg';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'superherolinesAPI';
    DelayedInsert = true;
    EntityName = 'superheroLine';
    EntitySetName = 'superheroLines';
    PageType = API;
    SourceTable = SuperheroLine;
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
                field(lineNo; Rec."Line No.")
                {
                }
                field(powerRating; Rec."Power Rating")
                {
                }
                field(superheroName; Rec."Superhero Name")
                {
                }
                field("type"; Rec."Type")
                {
                }
                field(systemId; Rec.SystemId)
                {
                }
                field(superHeroId; Rec.SuperHeroId)
                {
                    Caption = 'SuperHeroId';
                }

                part(weapons; weaponsAPI)
                {
                    EntityName = 'weapon';
                    EntitySetName = 'weapons';
                    SubPageLink = Code = field("Code");
                }
                part(superpowers; superpowersAPI)
                {
                    EntityName = 'superPower';
                    EntitySetName = 'superPowers';
                    SubPageLink = Code = field("Code");
                }

            }
        }
    }
}
