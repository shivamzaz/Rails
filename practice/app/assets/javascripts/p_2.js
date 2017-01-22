function fun(){
	var squares = document.getElementsByClassName('square');
	for(var i = 0; i < squares.length; i++,cnt=0) {
	squares[i].addEventListener("click", changeColor);
	}
	

	function changeColor(event) {
	  this.style.backgroundColor = randomColor(); 
	  	//alert(this.style.backgroundColor);
	  document.getElementById("ram").innerHTML = this.style.backgroundColor;
	}


	function randomColor() {

	var randomRed = Math.floor(Math.random() * 255);
	var randomGreen = Math.floor(Math.random() * 255);
	var randomBlue = Math.floor(Math.random() * 255);
	//create the string that is the ‘random color’
	var randomColor = "rgb("+randomRed+","+randomGreen+","+randomBlue+")";
	return randomColor;
	}
}