page 50102 "customerinfo"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Tasks;
    SourceTable = "customerinfo";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("custid"; Rec."custid")
                {
                    ApplicationArea = All;

                }
                field("custname"; Rec."custname")
                {
                    ApplicationArea = All;

                }
                field("custaddress"; Rec."custaddress")
                {
                    ApplicationArea = All;

                }
                field("posting date"; Rec."posting date")
                {
                    ApplicationArea = All;

                }
                field("custweight"; Rec."custweight")
                {
                    ApplicationArea = All;

                }
                field("released"; Rec."released")
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}