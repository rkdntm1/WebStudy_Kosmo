/**
 * 
 */
class Ball {
	    constructor(x, y, radius, table) {
	        this.x = x; 			// 중심점
	        this.y = y;				// 중심점
	        this.radius = radius;	// 반지름
	        this.table = table;		// 이 공이 있는 테이블
	        this.dx = 5;			// 공 현재 진행 방향
	        this.dy = 5;
	    }
	    
	    draw(context) {
	    	context.beginPath(); // 그리기시작
			context.fillStyle = "red";
	    	context.arc(this.x, this.y, this.radius, 0, Math.PI * 2, true);
			context.closePath();
			context.fill();
			this.chgPos();
	    }
	    
	    chgPos() {
	    	// 좌측 경계에 부딪히다.					우측 경계에 부딪히다.
	    	if(this.x < (0 + this.radius) || this.x > (table.getWidth() - this.radius))
	    		this.dx = -this.dx;		
	    	// 상단 경계에 부딪히다.					하단 경계에 부딪히다./
			if(this.y < (0 + this.radius) || this.y > (table.getHeight() - this.radius))
				this.dy = -this.dy;
			this.x += this.dx;
			this.y += this.dy;    	
	    }	
	}