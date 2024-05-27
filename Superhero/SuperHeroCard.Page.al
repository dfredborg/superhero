namespace Fredborg.Superheroes.Superhero;

page 50102 SuperHeroCard
{
    ApplicationArea = All;
    Caption = 'Superhero Card';
    PageType = Card;
    SourceTable = SuperHero;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field(Name; Rec.Name)
                {
                    InstructionalText = 'Specifies the value of the Name field.';
                }
                field(Description; Rec.Description)
                {
                    InstructionalText = 'Specifies the value of the Description field.';
                }
                field(Agility; Rec.Agility)
                {
                }
                field(Intelligence; Rec.Intelligence)
                {
                }
                field(Speed; Rec.Speed)
                {
                }
                field(Strength; Rec.Strength)
                {
                }
                field(PowerRating; Rec.PowerRating)
                {
                }
            }
            part(superheroLines; "Superhero Subpage")
            {
                ApplicationArea = All;
                SubPageLink = "Superhero Name" = field(Name);
            }
        }
        area(FactBoxes)
        {
            part(superheroFactBox; SuperheroFactbox)
            {
                Caption = 'Profile Picture';
                ApplicationArea = All;
                SubPageLink = Name = field(Name);
            }
        }
    }
}
