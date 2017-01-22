function fun(){
	var po=document.getElementsById('message')
	var p1=document.getElementsById('ram')
	var squares = document.getElementsByClassName('square');
	var cnt=0;
	for(var i = 0; i < squares.length; i++,cnt=0) {
	squares[i].addEventListener("click", changeColor);


	}
	

	function changeColor(event) {
	  this.cnt=0
	  this.style.backgroundColor = randomColor(); 
	  	alert(this.style.backgroundColor);
	  this.onclick=function(){
		p1.innerHTML=this.style.backgroundColor;
	}
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