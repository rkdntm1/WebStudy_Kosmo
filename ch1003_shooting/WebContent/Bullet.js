/**
 * 
 */ 
class Bullet {
	constructor(ballRadius) {
		//포탄의 크기 
		this.ballRadius = ballRadius;
		//포탄의 X축 및 Y축 현재 속도 
		this.ballVX = 0;
		this.ballVY = 0;
	}
	
	setLoc(xLoc, yLoc) {
		this.ballX = xLoc;
	    this.ballY = yLoc;
	}
	
	setVelocity(xSpeed, ySpeed){
		this.ballVX = xSpeed;	//포탄의 x축 y축 현재 속도
		this.ballVY = ySpeed;
	}
	
	/**
		elapsedTime : milli second
	 */
	timeElapsed(elapsedTime) {
		this.ballVY += 9.8 * elapsedTime / 1000;
		this.ballX += this.ballVX;
		this.ballY += this.ballVY;
	}
	
	drawBall(context) {
		context.beginPath(); //그리기 경로 출발점 지정
		context.arc(this.ballX, this.ballY, this.ballRadius, 0, 2.0 * Math.PI, true);
		context.fillStyle = "red";
		context.fill();
		
	}
	
	touch(target) {
		return target.touch(this.ballX, this.ballY);
	}
	
	touchOnTheGround(ground) {
		return ground.touch(this.ballY);
	}
		
}