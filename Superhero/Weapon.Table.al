namespace Fredborg.Superheroes.Superhero;

table 50102 Weapon
{
    Caption = 'Weapon';
    DataClassification = CustomerContent;
    LookupPageId = Weapons;
    DrillDownPageId = Weapons;

    fields
    {
        field(1; "Code"; Code[50])
        {
            Caption = 'Code';
            ToolTip = 'Specifies the value of the Code field.';
            NotBlank = true;
        }
        field(2; Description; Text[250])
        {
            Caption = 'Description';
            ToolTip = 'Specifies the value of the Description field.';
        }
        field(3; "Power Rating"; Integer)
        {
            Caption = 'Power Rating';
            ToolTip = 'Specifies the value of the Power Rating field.';
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}
