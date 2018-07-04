# HOW TO USE 


#### 1. You need two things: the json and template file


#### 2. Create the json file and put into json folder 
```open json```


#### 3. Create the template file and put into template folder or not
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
    
### Open the folder templates to see more examples
            
#### 4. Now we gona call the tool
```ruby JsonToTemplate.rb {TEMPLATE_FULL_PATH}```

  example:
```ruby JsonToTemplate.rb template/mappableSwiftModel.template```


## BYE, HAVE A GREAT TIME!!!!! 

<img src="img/ByeHaveAGreatTime.gif">