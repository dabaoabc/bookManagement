window.onload=function(){
         	var log=document.getElementById("log");
         	log.onmouseover=function(){
         		this.style.backgroundColor="#7ebbf9";
         	};
         	log.onmouseout=function(){
         		this.style.backgroundColor="#4da1f7";
         	}
         	log.onmousedown=function(){
         		this.style.backgroundColor="#2c84de"
         	}
         	log.onmouseup=function(){
         		this.style.backgroundColor="#7ebbf9"
         	}
         	log.onclick=function(){
//       		this.style.backgroundColor="#2c84de"
         		//window.location.href="http://127.0.0.1:8020/%E5%AE%9E%E9%AA%8C%E5%AE%A4%E4%BD%9C%E4%B8%9A/zhuye.html";
         	}
         }