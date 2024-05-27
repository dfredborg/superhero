namespace Fredborg.Superheroes.Superhero;

using System.Environment;
using System.Utilities;
using System.Text;
table 50100 SuperHero
{
    Caption = 'SuperHero';
    DataClassification = CustomerContent;
    DrillDownPageId = SuperHeroList;
    LookupPageId = SuperheroList;

    fields
    {
        field(1; Name; Code[250])
        {
            Caption = 'Name';
            ToolTip = 'Specifies the value of the Name field.';
            NotBlank = true;
        }
        field(2; Description; Text[250])
        {
            Caption = 'Description';
            ToolTip = 'Specifies the value of the Description field.';
        }
        field(3; Strength; Integer)
        {
            Caption = 'Strength';
            ToolTip = 'Specifies the value of the Strength field.';
        }
        field(4; Speed; Integer)
        {
            Caption = 'Speed';
            ToolTip = 'Specifies the value of the Speed field.';
        }
        field(5; Intelligence; Integer)
        {
            Caption = 'Intelligence';
            ToolTip = 'Specifies the value of the Intelligence field.';
        }
        field(6; Agility; Integer)
        {
            Caption = 'Agility';
            ToolTip = 'Specifies the value of the Agility field.';
        }
        field(7; PowerRating; Integer)
        {
            Caption = 'Power Rating';
            ToolTip = 'Specifies the value of the Power Rating field.';
        }
        field(8; "Profile Picture"; Media)
        {
            Caption = 'Profile Picture';
            ToolTip = 'Specifies the value of the Profile Picture field.';
        }
    }
    keys
    {
        key(PK; Name)
        {
            Clustered = true;
        }
    }
    procedure GetProfilePictureBase64(): Text
    var
        TenantMedia: Record "Tenant Media";
        TempBlob: Codeunit "Temp Blob";
        Base64Convert: Codeunit "Base64 Convert";
        InStr: InStream;
        Outstr: OutStream;
        outText: Text;
    begin
        if TenantMedia.Get("Profile Picture".MediaId) then begin
            TenantMedia.CalcFields(Content);
            TenantMedia.Content.CreateInStream(InStr);
            exit(Base64Convert.ToBase64(InStr));
        end;
    end;
}
