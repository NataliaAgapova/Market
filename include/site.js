
	function getXmlHttp(){
	  var xmlhttp;
	  try {
	    xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
	  } catch (e) {
	    try {
	      xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	    } catch (E) {
	      xmlhttp = false;
	    }
	  }
	  if (!xmlhttp && typeof XMLHttpRequest!="undefined") {
	    xmlhttp = new XMLHttpRequest();
	  }
	  return xmlhttp;
	}



	function switchdiv(divname){
		  var setstatus;
		  if (document.getElementById(divname).style.display=="none") { setstatus="block"; } else { setstatus="none"; };
		  document.getElementById(divname).style.display=setstatus;
	};


function toNumber(value){
	if (isNaN(value)) {
		return 0
	} else {
		return value;
	}
}

function toNegativ(value){
	if (isNaN(value) || value>0) {
		return 0
	} else {
		return value;
	}
}
