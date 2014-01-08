function iFrameOn(){
	
	richTextField.document.designMode = 'On';	
	
}
function iBold(){

richTextField.document.execCommand('bold',false,null);
	
}

function iFontSize(){
var size = prompt('enter a size', '');
richTextField.document.execCommand('FontSize',false,size);
	
}
function iUnderline(){

richTextField.document.execCommand('underline',false,null);
	
}
function iForeColor(){
var color = prompt('give a color code', '');
richTextField.document.execCommand('ForeColor',false,color);
	
}
function iOrderedList(){

richTextField.document.execCommand('InsertUnorderedList',false,"newUL");
	
}
function iLink(){
var Linkurl = prompt('enter url for this text', "http://");
richTextField.document.execCommand('CreateLink',false,Linkurl);
	
}
function iUnLink(){

richTextField.document.execCommand('UnLink',false,null);
	
}
function iImage(){
var imgsrc = prompt('insert image', '');
if(imgsrc != null){ 
richTextField.document.execCommand('insertimage',false,imgsrc);}
	
}


function submit_form(){
var theform = document.getElementById("myform");
theform.elements['myTextArea'].value = window.frames['richTextField'].document.body.innerHTML;
theform.submit();
	
}

/*function submit_update(){
var theform = document.getElementById("myform");
window.frames['richTextField'].document.body.innerHTML=theform.elements['myTextArea'].value;
theform.submit();	
}
function delete_entry(){
window.navigate("");
}*/