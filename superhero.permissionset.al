permissionset 50100 superhero
{
    Assignable = true;
    Permissions = tabledata SuperHero=RIMD,
        tabledata SuperheroLine=RIMD,
        tabledata SuperPowers=RIMD,
        tabledata Weapon=RIMD,
        table SuperHero=X,
        table SuperheroLine=X,
        table SuperPowers=X,
        table Weapon=X,
        page "Superhero Subpage"=X,
        page SuperHeroApi=X,
        page SuperHeroCard=X,
        page SuperheroFactbox=X,
        page superherolinesAPI=X,
        page SuperheroList=X,
        page superpowersApi=X,
        page SuperPowersList=X,
        page Weapons=X,
        page weaponsApi=X;
}