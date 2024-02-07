const button1 = document.getElementById("size");
const button2 = document.getElementById("migrate");

button1.addEventListener("click", button1Click);
button2.addEventListener("click", button2Click);

function button1Click() {
	document.getElementById('form').style.display = 'none';
	document.getElementById('b1').style.display = 'inline';
}

function button2Click() {
	document.getElementById('form').style.display = 'none';
	document.getElementById('b2').style.display = 'inline';
}