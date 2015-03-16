window.onload=function(){
	  var now=new Date()
	  year=now.getFullYear()
	  month=now.getMonth()+1;
	  day=now.getDate()
	  hour=now.getHours()
	  minute=now.getMinutes()
	  Date=year+"/"+month+"/"+day;
	  time=hour+":"+minute
	  document.getElementById("date").innerHTML=Date;
	  document.getElementById("time").innerHTML=time;	 
	  $(document).ready(function(){
       $(".operate1").click(function(){
          $(this).parents(".item1").remove();
           });	
       $(".operate1").click(function(){
          $(this).parents(".item2").remove();
       });
       $(".add").click(function(){
       	  $(".add-book").show()
       });
       $(".book-nosure").click(function(){
       	  $(".add-book").hide()
       });
       });
       var title=document.getElementById("table");
       total=document.getElementById("total-content")
       x=title.getElementsByTagName("li");
       y=total.getElementsByTagName("div")
       for(var i=0;i<x.length;i++)
       {
       	x[i].id=i;
     	y[i].id=i;
       	x[i].onmouseover=function(){
       		for(var j=0;j<x.length;j++)
       		{
       			y[j].style.display='none'
       		}
       		y[this.id].style.display='block';
       	}
       }
}
