/**
 * 
 */
class Target {
	constructor(posX, posY, width, height) {
		this.targetImg = new Image();  //목표물
		this.targetImg.src = "target.jpg";

		this.posX = posX;
		this.posY = posY;
		this.width = width;
		this.height = height;
	}

	touch(ballX, ballY) {
		return ballX >= this.posX && ballX <= this.posX + this.width 
			&& ballY >= this.posY && ballY <= this.posY + this.height;		
	}
	
	draw(context) {
		context.drawImage(this.targetImg, this.posX, this.posY, this.width, this.height);
	 }
}