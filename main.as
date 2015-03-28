import Particle;
var tempo = 132;
var mspb = (60*1000)/tempo;
var mspf = 1000/60;
var rotrate = (mspf * Math.PI) / (mspb * 4);

var basis = stage.stageWidth/2;
var bheight = stage.stageHeight/2;
var particleGuide:Sprite = new Sprite();
stage.addChild(particleGuide);
particleGuide.y = bheight * 1.5;
var a1:Particle = new Particle(0, 100, basis, basis);
a1.graphics.beginFill(0x000000);
a1.graphics.drawCircle(0,0,10);
a1.graphics.endFill();
particleGuide.addChild(a1);
var a2:Particle = new Particle(Math.PI/2, 100, basis, basis);
a2.graphics.beginFill(0xFF0000);
a2.graphics.drawCircle(0,0,10);
a2.graphics.endFill();
particleGuide.addChild(a2);
var a3:Particle = new Particle(Math.PI, 100, basis, basis);
a3.graphics.beginFill(0x00FF00);
a3.graphics.drawCircle(0,0,10);
a3.graphics.endFill();
particleGuide.addChild(a3);
var a4:Particle = new Particle(Math.PI * (3/2), 100, basis, basis);
a4.graphics.beginFill(0x0000FF);
a4.graphics.drawCircle(0,0,10);
a4.graphics.endFill();
particleGuide.addChild(a4);

var s1:Sprite = new Sprite();
s1.graphics.beginFill(0x000000);
var swidth = Math.sqrt(Math.pow(100,2)*2);
s1.graphics.drawRect(0,0, swidth,bheight);
s1.graphics.endFill();
stage.addChild(s1);

var s2:Sprite = new Sprite();
s2.graphics.beginFill(0xFF0000);
s2.graphics.drawRect(0,0, swidth,bheight);
s2.graphics.endFill();
stage.addChild(s2);

var s3:Sprite = new Sprite();
s3.graphics.beginFill(0x00FF00);
s3.graphics.drawRect(0,0, swidth,bheight);
s3.graphics.endFill();
stage.addChild(s3);

var s4:Sprite = new Sprite();
s4.graphics.beginFill(0x0000FF);
s4.graphics.drawRect(0,0, swidth,bheight);
s4.graphics.endFill();
stage.addChild(s4);

update();

function update(){
	a1.update(rotrate);
	a2.update(rotrate);
	a3.update(rotrate);
	a4.update(rotrate);
	
	s1.x = a1.x;
	s1.scaleX = Math.abs(a1.x - a2.x)/swidth;
	if(a1.x < a2.x) s1.alpha = 1;
	else s1.alpha = 0;
	
	s2.x = a2.x;
	s2.scaleX = Math.abs(a2.x - a3.x)/swidth;
	if(a2.x < a3.x) s2.alpha = 1;
	else s2.alpha = 0;
	
	s3.x = a3.x;
	s3.scaleX = Math.abs(a3.x - a4.x)/swidth;
	if(a3.x < a4.x) s3.alpha = 1;
	else s3.alpha = 0;
	
	s4.x = a4.x;
	s4.scaleX = Math.abs(a4.x - a1.x)/swidth;
	if(a4.x < a1.x) s4.alpha = 1;
	else s4.alpha = 0;
}
