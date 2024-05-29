namespace Fredborg.Superheroes.Superhero;

page 50101 SuperheroList
{
    ApplicationArea = All;
    Caption = 'Superhero List';
    PageType = List;
    SourceTable = SuperHero;
    UsageCategory = Lists;
    CardPageId = SuperHeroCard;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Name; Rec.Name)
                {
                }
                field(Description; Rec.Description)
                {
                }
            }
        }
    }

}
