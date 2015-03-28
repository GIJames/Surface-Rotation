package {
	import flash.display.Sprite;
	public class Particle extends Sprite{
		public var theta:Number;
		public var radius:Number;
		public var distance:Number;
		public var basis:Number;
		public var simple:Boolean;
		public function Particle(theta:Number = 0, radius:Number = 0, distance:Number = 0, basis:Number = 0, simple:Boolean = true){
			this.theta = theta;
			this.radius = radius;
			this.distance = distance;
			this.basis = basis;
			this.simple = simple;
			this.update();
		}
		public function update(deltaT:Number = 0){
			if(deltaT != 0){
				this.theta = this.theta + deltaT;
				if(this.theta < 0) this.theta = this.theta + (Math.PI * 2);
				else if(this.theta > (Math.PI * 2)) this.theta = this.theta - (Math.PI * 2);
				}
			var xlocal = this.radius * Math.cos(this.theta);
			var zlocal;
			if(simple){
			zlocal= this.radius * Math.sin(this.theta) + this.distance;
			this.x = xlocal + this.basis;
			}
			else{
			this.x = (xlocal/zlocal) * this.distance + this.basis;
			}
		}
	}
}
