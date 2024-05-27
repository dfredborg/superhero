namespace Fredborg.Superheroes.Superhero;

page 50105 SuperheroFactbox
{
    ApplicationArea = All;
    Caption = 'SuperheroFactbox';
    PageType = CardPart;
    SourceTable = SuperHero;

    layout
    {
        area(content)
        {
            group(General)
            {
                ShowCaption = false;

                field("Profile Picture"; Rec."Profile Picture")
                {
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(ImportImage)
            {
                ApplicationArea = All;
                Caption = 'Upload Image';
                Image = Picture;

                trigger OnAction()
                var
                    FromFileName: Text;
                    InStreamPic: InStream;
                begin
                    if UploadIntoStream(FromFileName, InStreamPic) then begin
                        Rec."Profile Picture".ImportStream(InStreamPic, FromFileName);
                        Rec.Modify();
                    end;
                end;
            }
        }
    }
}
