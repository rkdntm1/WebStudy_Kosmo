/**
 * 
 */
class Cannon {
	constructor(xLoc, yLoc) {
		// 포의 초기 위치
		this.xLoc = xLoc;
		this.yLoc = yLoc;
	}

	load(bullet) {
		this.bullet = bullet;
		this.bullet.setLoc(this.xLoc, this.yLoc);
	}

	shoot(angle, velocity) {
		this.radianAngle = this.degrees_to_radians(angle);
		this.xSpeed = velocity * Math.cos(this.radianAngle);
		this.ySpeed = -velocity * Math.sin(this.radianAngle);
		this.bullet.setVelocity(this.xSpeed, this.ySpeed);
	}
	
	degrees_to_radians(degrees) {
		return degrees * (Math.PI / 180);
	}
}