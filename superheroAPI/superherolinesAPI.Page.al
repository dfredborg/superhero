namespace Fredborg.Superheroes.API;
using Fredborg.Superheroes.Superhero;

page 50107 superherolinesAPI
{
    APIGroup = 'superheroes';
    APIPublisher = 'fredborg';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'superherolinesAPI';
    DelayedInsert = true;
    EntityName = 'superheroLineBC';
    EntitySetName = 'superheroLinesBC';
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
                }
                field(powerId; Rec.SuperPowerId)
                {
                }
                field(weaponId; Rec.WeaponId)
                {
                }

                part(weapons; weaponsAPI)
                {
                    EntityName = 'weapon';
                    EntitySetName = 'weapons';
                    SubPageLink = SystemId = field("weaponId");
                }
                part(superpowers; superpowersAPI)
                {
                    EntityName = 'superPower';
                    EntitySetName = 'superPowers';
                    SubPageLink = SystemId = field("superPowerId");
                }

            }
        }
    }

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    var
        SuperheroLine: Record SuperheroLine;
        lineNo: Integer;
    begin
        SuperheroLine.SetRange("Superhero Name", rec."Superhero Name");
        if SuperheroLine.FindLast() then
            lineNo := SuperheroLine."Line No." + 10000
        else
            lineNo := 10000;
        rec."Line No." := lineNo;
    end;
}
