table 50101 "customerinfo"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "custid"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; "custname"; Text[20])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                RecVendor: Record Vendor;
            begin
                RecVendor.Get("custid");
                "custname" := RecVendor.Name;
            end;

        }
        field(3; "custaddress"; Code[50])
        {
            DataClassification = ToBeClassified;

        }
        field(4; "posting date"; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(5; "custweight"; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(6; "released"; Boolean)
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(Key1; "custid")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        "posting date" := workdate();

    end;

    trigger OnModify()
    begin
        if released then
            Error('changes are not allowed as records are already released');

    end;

    trigger OnDelete()
    begin
        Error('you are not authourized to delete the records');

    end;

    trigger OnRename()
    begin

    end;

}