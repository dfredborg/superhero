namespace Fredborg.Superheroes.Superhero;

using Fredborg.Superheroes.Superhero;

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

            trigger OnValidate()
            var
                SuperHero: Record SuperHero;
            begin
                SuperHero.GetBySystemId(SuperHeroId);
                rec."Superhero Name" := SuperHero.Name;
            end;
        }
        field(8; weaponId; Guid)
        {
            Caption = 'WeaponId';
            DataClassification = SystemMetadata;
            TableRelation = Weapon."SystemId";

            trigger OnValidate()
            var
                Weapon: Record Weapon;
            begin
                Weapon.GetBySystemId(WeaponId);
                rec.Code := Weapon.Code;
            end;
        }
        field(9; superpowerId; Guid)
        {
            Caption = 'SuperPowerId';
            DataClassification = SystemMetadata;
            TableRelation = SuperPowers."SystemId";

            trigger OnValidate()
            var
                SuperPowers: Record SuperPowers;
            begin
                SuperPowers.GetBySystemId(SuperPowerId);
                rec.Code := SuperPowers.Code;
            end;
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
        SuperPowers: Record SuperPowers;
        Weapon: Record Weapon;
    begin
        SuperHero.Get("Superhero Name");
        SuperHeroId := SuperHero."SystemId";
        if Type = Type::Power then begin
            SuperPowers.Get("Code");
            SuperPowerId := SuperPowers."SystemId";
        end;
        if Type = Type::Weapon then begin
            Weapon.Get("Code");
            WeaponId := Weapon."SystemId";
        end;
    end;


}
