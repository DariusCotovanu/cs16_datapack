function convertOldToNewJson(oldJson) {
     //console.log(oldJson.pools[0].entries[0].functions[0].tag)

    let start = 0;
    let char
    let str = oldJson.pools[0].entries[0].functions[0].tag
    str = str.replace(/1b/g,"true");
    str = str.replace(/0b/g,"false");
    //str = str.replace(/\s+/g, '')
    str = str.replace(/"text"/g,'text');
    str = str.replace(/"italic"/g,'italic');
    str = str.replace(/"bold"/g,'bold');
    str = str.replace(/"color"/g,'color');
    str = str.replace(/'/g,"")
    for (let i = 0; i < str.length-1; i++) {
        if(str[i]==='I',str[i+1]===';'){
        str = str.slice(0,i) + str.slice(i+2,str.length);
        }
        // if(str[i].charAt()){
        //     str = str.slice(0,i) + "\"" + str.slice(i,str.length)
        //     start = 1;
        // }
        char = str.charCodeAt(i);
        //console.log(char.charCodeAt(0))
        if(start==0&&(char>30&&char<39||char>65&&char<90||char>97&&char<122)){
            str = str.slice(0,i) + "\"" + str.slice(i,str.length)
            start = 1;
        }
        if(start==1&&str[i]===':'){
            str = str.slice(0,i) + "\"" + str.slice(i,str.length)
            start = 2;
            

        }
        if(start==2&&str[i]===','||str[i]==='{'){
            str = str.slice(0,i+1) + "\n" + str.slice(i+1,str.length)
            start = 0;
            i++;
           
        }
        
      }
      console.log(str)
}

function convertNbtStringToJson(nbtString) {
    // Basic cleanup: Convert the NBT string to something that can be parsed by JSON.parse
    // Replace single quotes with double quotes, handle any non-standard JSON formatting in the NBT string
    let cleanedString = nbtString
        .replace(/'/g, '"') // Replace single quotes with double quotes
        .replace(/([a-zA-Z0-9_]+):/g, '"$1":') // Ensure all keys are wrapped in double quotes
        .replace(/([0-9]+)b/g, '$1'); // Remove 'b' suffix from numbers

    // Parse cleaned string into JSON object
    try {
        return JSON.parse(cleanedString);
    } catch (error) {
        console.error("Failed to parse NBT string:", error);
        return {};
    }
}

// Example usage
let oldJson = {
    "pools": [
        {
            "rolls": 1,
            "entries": [
                {
                    "type": "minecraft:item",
                    "name": "minecraft:ender_eye",
                    "functions": [
                        {
                            "function": "minecraft:set_nbt",
                            "tag": "{CustomModelData:10200,display:{Name:'{\"text\":\"CV-47 [AK-47]\",\"color\":\"aqua\",\"italic\":false}',Lore:['[{\"text\":\"[PRESS F TO RELOAD]\",\"italic\":false,\"bold\":true,\"color\":\"gold\"}]']},gun:{model:10200,reloadTime:48,primary:1b,uid:-1,isGun:1b,name:\"CV-47 [AK-47]\",recoilXZ:6,recoilY:5,id:20,fire_rate:2,block_pen:4,range_modifier:0.78f,bullets:30,total_bullets:90,magazine_capacity:[30,90],damage:[{head:140,chest:35,legs:26},{head:108,chest:27,legs:13}]},AttributeModifiers:[{Amount: -1000000, Slot: \"mainhand\", Operation: 0, UUID: [I; 172525569, 32523819, -1915147222, -1521153014], AttributeName: \"generic.attack_speed\", Name: \"generic.attack_speed\"},{AttributeName:\"generic.movement_speed\",Name:\"generic.movement_speed\",Amount:-0.13,Operation:1,UUID:[I;-184230400,-1466415833,-1219298785,1419402716],Slot:\"mainhand\"}]}"
                        }
                    ]
                }
            ]
        }
    ]
};

// Convert the old JSON to the new JSON format
let newJson = convertOldToNewJson(oldJson);

//console.log(JSON.stringify(newJson, null, 2));
