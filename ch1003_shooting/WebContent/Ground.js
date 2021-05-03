/**
 * 
 */
class Ground {
	constructor(posY) {
		// 땅의 높이는 디스플레이를 위하여 뒤집혀진 세상에서 정의.
		this.posY = posY;
		this.groundImg = new Image();
		this.groundImg.src = "lawn.jpg";
	}

	touch(ballY) {
		return ballY > this.posY;
	}

	draw(context) {
		context.drawImage(this.groundImg, 0, this.posY);
	}
}	
