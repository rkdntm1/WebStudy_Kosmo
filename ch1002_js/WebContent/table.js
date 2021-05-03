/**
 * 
 */
class Table {
	    constructor(w, h) {
	        this.width = w; 		// 폭
	        this.height = h;		// 길이
	    }
	    
	    getWidth() {
	    	return this.width;
	    }
	    
	    getHeight() {
	    	return this.height;	
	    }
	    
	    draw(context){
	    	context.clearRect(0, 0, this.width, this.height);
	    }
	}