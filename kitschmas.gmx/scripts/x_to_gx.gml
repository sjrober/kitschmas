///x to gx(x)

var xx = argument[0];
if (xx < inventory.view_xview[0]) return -1;
return (xx - inventory.view_xview[0]) div inventory.box_size;

