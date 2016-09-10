//inventory pick up item
var add_item = argument[0]

//check for item in inventory

for (var yy = 0; yy <inventory.height; yy++)
    for (var xx = 0; xx < inventory.width; xx++) {
        if (inventory.box[#xx,yy]==add_item) {
        inventory.count[#xx,yy]++;
        return true;
    }
}

//check for an empty slot

for (var yy = 0; yy <inventory.height; yy++)
    for (var xx = 0; xx < inventory.width; xx++) {
        if (inventory.box[#xx,yy]==item.none) {
        inventory.box[#xx,yy]= add_item;
        inventory.count[#xx,yy]++;
        return true;
    }
}

/// show debug message
show_debug_message ("inventory is full!");
return false;
