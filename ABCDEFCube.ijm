z = 100;
w = z;
h = z;
fontsize = z/2;

for(i=0;i<6;i++){
	sname = fromCharCode(charCodeAt("A",0)+i);
	newImage(sname, "8-bit black", w, h, 1);
	setFont("SansSerif", fontsize , "bold");
	setForegroundColor(100);
	run("Select All");
	run("Fill");
	setColor(100+10*i);
	swidth = getStringWidth(sname);
	x=w/2-swidth/2; y=h/2+fontsize/2;
	drawString(sname, x, y);
}
newImage("stack", "8-bit black", w, h, z);

selectWindow("A");
run("Copy");
selectWindow("stack");
setSlice(1);
run("Paste");
selectWindow("A");
close();

selectWindow("F");
run("Copy");
selectWindow("stack");
setSlice(z);
run("Paste");
selectWindow("F");
close();

for(i=1;i<z+1;i++){
	selectWindow("B");
	makeRectangle(0, i-1, w, 1);
	run("Copy");
	selectWindow("stack");
	setSlice(i);
	makeRectangle(0, 0, w, 1);
	run("Paste");
}
selectWindow("B");
close();

for(i=1;i<z+1;i++){
	selectWindow("C");
	makeRectangle(i-1, 0, 1, h);
	run("Copy");
	selectWindow("stack");
	setSlice(i);
	makeRectangle(0, 0, 1, h);
	run("Paste");
}
selectWindow("C");
close();

for(i=1;i<z+1;i++){
	selectWindow("D");
	makeRectangle(i-1, 0, 1, h);
	run("Copy");
	selectWindow("stack");
	setSlice(i);
	makeRectangle(w-1, 0, 1, h);
	run("Paste");
}
selectWindow("D");
close();

for(i=1;i<z+1;i++){
	selectWindow("E");
	makeRectangle(0,i-1, w, 1);
	run("Copy");
	selectWindow("stack");
	setSlice(i);
	makeRectangle(0, h-1, w, 1);
	run("Paste");
}
selectWindow("E");
close();
