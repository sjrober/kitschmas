///y to gy(y)

var yy = argument[0];
if (yy < inventory.view_yview[0]) return -1;
return (yy-inventory.view_yview[0]) div inventory.box_size;
