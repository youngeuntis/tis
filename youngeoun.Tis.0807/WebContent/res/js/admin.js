function blindMassage(w, h, test){
	 x = (screen.availWidth - w) / 2;
	 y = (screen.availHeight - h) / 2;
	 window.open('../function/blindMassage/blindMassage.jsp?userId='+test,'blindMassage','width='+w+', height='+h+', left='+x+', top='+y );
	 return false;
}

function forcedblindMassage(w, h, test){
	 x = (screen.availWidth - w) / 2;
	 y = (screen.availHeight - h) / 2;
	 window.open('../function/forcedblindMassage/forcedblindMassage.jsp?userId='+test, 'forcedblindMassage','width='+w+', height='+h+', left='+x+', top='+y);
	 return false;	 
}

function popUpEmail(w, h){
	 x = (screen.availWidth - w) / 2;
	 y = (screen.availHeight - h) / 2;
	 window.open('../function/email/E-mail.jsp','popUpEmail','width='+w+', height='+h+', left='+x+', top='+y);
	 return false;
}
	
function popUpMassage(w, h){
	x = (screen.availWidth - w) / 2;
	y = (screen.availHeight - h) / 2;
	window.open('../function/massage/massage.jsp','popUpMassage','width='+w+', height='+h+', left='+x+', top='+y );
	return false;
}

function StepMassage(w, h){
	x = (screen.availWidth - w) / 2;
	y = (screen.availHeight - h) / 2;
	window.open('../function/StepMassage/StepMassage.jsp','StepMassage','width='+w+', height='+h+', left='+x+', top='+y);
	return false;
}

function ClearMassage(w, h, test){
	x = (screen.availWidth - w) / 2;
	y = (screen.availHeight - h) / 2;
	window.open('../function/ClearMassage/ClearMassage.jsp?userId='+test,'ClearMassage','width='+w+', height='+h+', left='+x+', top='+y);
	return false;
}

function Confirm(){
	var nvua = navigator.userAgent;
	if (nvua.indexOf('MSIE') >= 0){
    if(nvua.indexOf('MSIE 5.0') == -1) {
        top.opener = '';
    }
	} else if (nvua.indexOf('Gecko') >= 0){
    	top.name = 'CLOSE_WINDOW';
    	wid = window.open('','CLOSE_WINDOW');

top.close();
}
}

function Confirm2(){
	var a = confirm("정말 닫으시겠습니까?");
	if(a == true ){
		var nvua = navigator.userAgent;
    	if (nvua.indexOf('MSIE') >= 0){
        if(nvua.indexOf('MSIE 5.0') == -1) {
            top.opener = '';
        }
    	} else if (nvua.indexOf('Gecko') >= 0){
        	top.name = 'CLOSE_WINDOW';
        	wid = window.open('','CLOSE_WINDOW');
    
    top.close();
}
	}else{
		
	}
	
}
