HOW_TO_USE = "



                                *********** HOW TO USE ***********


                        1 - You need two things: the json and template file


                        2 - Create the json file and put into json folder 
                        open json


                    3 - Create the template file and put into template folder or not
                        To create your template file you can use the follow tags:

                        {@OBJECT} - name of json file or json key
                        {@FIELDS} - group that contains key, type and value
                            {@KEY} - json key
                            {@TYPE} - type of value, eg. String, Integer...
                            {@VALUE} - value of key

                        Also you can use extra parameters inside {@KEY}, {@TYPE} and {@VALUE}
                        .CAMELCASE = transform value to camelcase value
                        .FIRST_TO_LOWER = transform first letter to lower case
                        .FIRST_TO_UPPER = transform first letter to upper case
                        
                        **Open the folder templates to see more examples**
                                
                    4 - Now we gona call the tool
                    ruby JsonToTemplate.rb {TEMPLATE_FULL_PATH}

                        example:
                        ruby JsonToTemplate.rb template/mappableSwiftModel.template




                                    BYE, HAVE A GREAT TIME!!!!! 



MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNNmmddmMMMMMMMMMMMMMMMM
MNmddmmNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNNmmdmmNNddNMMMMMMMMMMMMMMM
MmdmNNmmmdmmNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNNmdmmNMMMMmdmMMMMMMMMMMMMMMMM
MmddMMMMMNNdhmmNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNmdhsmMMMMMMmddMMMMMMMMMMMMMMMMM
MNddNMMMMMM+:+ydmNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMmmhs/:-+MMMMMNddNMMMMMMMMMMMMMMMMM
MMmdmMMMMMm----/shmNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMmdho/-----dMMMNddNMMMMMMMMMMMMMMMMMM
MMMmdmMMMMy------/sdmNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMmdho:-------oMMNddNMMMMMMMMMMMMMMMMMMM
MMMMmdmMMMs--------/ydmMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNmds:---------/MNddmMMMMMMMMMMMMMMMMMMMM
MMMMMmdmMM+---------:oddNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNmdy/-----------:NddNMMMMMMMMMMMMMMMMMMMMM
MMMMMMmddN+-----------/hdmMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMmdh+-------------+ddNMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMNmdy:-----------:ydmMMMMMMMMMMMMMMMMMMMMMMMMMMMMNddo:------------:sdmNMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMmdho:-----------odmNMMMMMMMMMMMMMMMMMMMMMMMMNmdy/-------------/hdmMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMmdh+:----------+ddNMNNmmmdddddddmmmmNNMMMmdh+-------------:sdmNMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMNmdy/----------/hddhyo++///////++osyhddmds:------------:ohdmMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMNmdy/---------//:------------------:/o+------------:+hdmMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMNmdy/------------------------------------------:ohdmNMMMMMMMMMMMMNddddmmNMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMmdds---------------------------------------:ohdmNMMMMMMMMMMMMMmdh::/+shdmNMMMMMMMM
MMMMMMMMMMMMMMMMMNddo:--------------------------------------+ddmMMMMMMMMMMMMMMMmdh:------+ydmNMMMMMM
MMMMMMMMMMMMMMMMmdy:-------:o+-------------------------------/hdmMMMMMMMMMMMMMmdh:---------+hdmMMMMM
MMMMMMMMMMMMMMMmds--------yMdoy:---------------ohdy/----------:sdmNMMMMMMMMMMmdy:-----------:sdmMMMM
MMMMMMMMMMMMMMddo--------hMMo`yo-------------/s::mMN/-----------+ddNMMMMMMMMmdy:--------------oddNMM
MMMMMMMMMMMMMddo--------/MMMMNMs------------:Nh:/mMMy------------+dmMMMMMMMmdy:----------------+ddNM
MMMMMMMMMMMMmdh---------sMMMMMM+------------yMMMMMMMh-------------sdmMNNmNmdy:------------------+ddN
MMMMMMMMMMMMdd+---------sMMMMMd-------------hMMMMMMM+-------------:ddNddyddy:------------------:oddN
MMMMMMMMMMMNdd:-::------:NMMMd:----////-----sMMMMMMy---------:-----ydddo-/o:--:ss:-----------/sddmMM
MMMMMMMMMMMNdh/sssso/----/sy+:-----smmy:----:hNMMmo:-----:/ossso/--+ddy:-----+hddh/--------/sdmNMMMM
MMMMMMMMMMMmdhsyyyyyys/-------------::-------:/+/:-----:+syyyyyyyo::dd/----:sdmNNddo-----/ydmNMMMMMM
MMMMMMMMMMMNddyyyyyyyyy/------------------------------:syyyyyyyyyy+:ds:/+-+hdmMMMMmdy:-/ydmNMMMMMMMM
MMMMMMMMMMMMddhyyyyyyyys:-----------------------------syyyyyyyyyyyo+hyshdydmNMMMMMMmdhydmNMMMMMMMMMM
MMMMMMMMMMMMNddhyyyyyyyy:----------------------------:yyyyyyyyyyyyoyhhddmNNMMMMMMMMMNNNNMMMMMMMMMMMM
MMMMMMMMMMMMMNmdhyyyyyys-----------------------------:syyyyyyyyyyhddhddmMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMNmdhhyyo:------------------------------/syyyyyyyhddmmddmMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMNmddy+/:------------------------------:+ssyyhddmNMMNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMNmmdhyo+//::---------------------:::/oyddmmNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMNNNmmddhhyysoo++++/////+++oosyyhddmmNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNNNNNmmmmmmmmmmmmmmmmmNNNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"

TEMPLATE_NOT_FOUND = "Template not found :(

    Do you need a help?
    
    ruby JsonToTemplate.rb -h 
"

INVALID_TEMPLATE = "Invalid Template :p

    Do you need a help?

    ruby JsonToTemplate.rb -h 
"

ARGS_HELP = ["-h", "--help"]

module Types
    HASH = "Hash"
    ARRAY = "Array"
    STRING = "String"
    INT = "Integer"
    FLOAT = "Float"
    NILCLASS = "NilClass"
    OBJECT = "Object"
end

module Tags
    OBJECT = "{@OBJECT}"
    KEY = "{@KEY}"
    TYPE = "{@TYPE}"
    VALUE = "{@VALUE}"
    FIELDS = "{@FIELDS}"
end

module Model
    TYPE = "Type"
    VALUE = "Value"
end

module Keys
    TYPE = "Type"
    VALUE = "Value"
end

module Format
    FIRST_TO_LOWER = "FIRST_TO_LOWER"
    FIRST_TO_UPPER = "FIRST_TO_UPPER"
    CAMELCASE = "CAMELCASE"
end