///inventory remove item (x,y)

var xx=argument[0]
var yy=argument[1]

if (xx != median(0, xx, inventory.width-1) or yy != median(0,yy, inventory.height-1)) {
    show_debug_message ("x and y are out of range");
    exit;
}

//get the item count
var item_count = inventory.count[#xx,yy];

//make sure we have items
if (item_count >=0) {
    
    //take one from inventory count
    inventory.count[#xx,yy]--;
    
    }    
    
    
//get access to remove item
    var removed_item = inventory.box[#xx,yy];
    
    if (item_count ==1) {                        //check for last item
        inventory.box[#xx,yy] = item.none;      //set item box to empty
        return removed_item;                    //return item removed
    } else if (item_count==0) {
    //return none
    return item.none;
    show_debug_message ("there was not an item at that location");
    }
