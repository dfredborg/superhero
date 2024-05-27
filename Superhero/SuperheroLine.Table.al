namespace Fredborg.Superheroes.Superhero;

table 50103 SuperheroLine
{
    Caption = 'SuperheroLine';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Type"; Enum SuperheroLineType)
        {
            Caption = 'Type';
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Code"; Code[50])
        {
            Caption = 'Code';
            TableRelation = if ("Type" = const(Power)) SuperPowers."Code"
            else if ("Type" = const(Weapon)) Weapon."Code";

            trigger OnValidate()
            var
                SuperPowers: Record SuperPowers;
                Weapon: Record Weapon;
            begin
                if ("Type" = Type::Power) then begin
                    SuperPowers.Get("Code");
                    Description := SuperPowers.Description;
                    "Power Rating" := SuperPowers."Power Rating";
                end;
                if ("Type" = Type::Weapon) then begin
                    Weapon.Get("Code");
                    Description := Weapon.Description;
                    "Power Rating" := Weapon."Power Rating"
                end;
            end;
        }
        field(4; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(5; "Power Rating"; Integer)
        {
            Caption = 'Power Rating';
            Editable = false;
        }
        field(6; "Superhero Name"; Code[20])
        {
            Caption = 'Superhero Name';
            TableRelation = SuperHero."Name";
        }
        field(7; SuperHeroId; Guid)
        {
            Caption = 'SuperHeroId';
            DataClassification = SystemMetadata;
            Editable = false;
            TableRelation = SuperHero."SystemId";
        }
    }

    keys
    {
        key(PK; "Superhero Name", "Line No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        SuperHero: Record SuperHero;
    begin
        SuperHero.Get("Superhero Name");
        SuperHeroId := SuperHero."SystemId";
    end;


}
