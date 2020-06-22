// JavaScript Document
function $id(id){return document.getElementById(id)}
var lastScrollY=0;
function heartBeat(){ 
diffY=document.documentElement.scrollTop; 
percent=0.1*(diffY-lastScrollY); 
if(percent>0)percent=Math.ceil(percent); 
else percent=Math.floor(percent); 
document.getElementById("server").style.top=parseInt(document.getElementById("server").style.top)+percent+"px";
lastScrollY=lastScrollY+percent; 
}
function close_float_left(){document.getElementById("server").style.display='none';}

function resizeimg(ImgD,imgwidth,imgheight){
	var flag=false;  
	var image=new Image(); 
	image.src=ImgD.src; 
	if(image.width>0 && image.height>0){ 
		flag=true; 
		if(image.width/image.height>= imgwidth/imgheight){ 
			if(image.width>imgwidth){
				ImgD.width=imgwidth; 
				ImgD.height=(image.height*imgwidth)/image.width; 
			}else{ 
				ImgD.width=image.width;
				ImgD.height=image.height; 
			} 
		} 
		else{ 
			if(image.height>imgheight){
				ImgD.height=imgheight; 
				ImgD.width=(image.width*imgheight)/image.height; 
			}else{ 
				ImgD.width=image.width;
				ImgD.height=image.height; 
			} 
		} 
	}
}


function check_title(n){
	//for循环给他们初始化的样式
	for(i=1;i<=5;i++){
		$id("title_"+i).className=""
		$id("title_div_"+i).style.display="none"
	}
	//给他们点击以后的样式
	$id("title_"+n).className="onli"
	$id("title_div_"+n).style.display="block"	
}

function pshow(i){
$id("div_1").style.display="block";
$id("li_"+i).className="onli";
}

function pclose(j){
	$id("div_1").style.display="none";
	$id("li_"+j).className="";
}

function odt_p(i){
	$id("dt_"+i).style.display="block";
	$id("dt_p").className="onli_p";
}
function cdt_p(i){
	$id("dt_"+i).style.display="none";
	$id("dt_p").className="dt_p";
}