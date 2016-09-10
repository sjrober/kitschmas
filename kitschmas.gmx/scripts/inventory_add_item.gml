/// inventory add item(x,y,item)
var xx = argument[0];
var yy = argument[1];
var add_item = argument[2];

if (xx != median(0, xx, inventory.width-1) or yy != median(0, yy, inventory.height-1)) {
    show_debug_message ("x and y are out of range");
    exit;
}

//get the item count
var item_count = inventory.count[#xx,yy];

if (item_count == 0) {
    
    //add the item
    inventory.box[#xx,yy] = add_item;
    
    //add 1 to the count
    inventory.count[#xx,yy]++;
    
    //return
    return true; 
    
    } else if (item_count > 0) {
    
    //is there already an item here?
    //is the item the same?
    if (inventory.box[#xx,yy] == add_item) {
        inventory.count[#xx,yy]++;
        return true;
        } else {
        show_debug_message("there is already an item there");
        return false;
    //our item count is less than zero
    //error
    show_error ("the item count is less than zero", false);
    }
}
