function telnone(){
    var d_phoneNo = document.getElementById('d_phoneNo');
    var p_phoneNo = document.getElementById('p_phoneNo');
    d_phoneNo.style.display='none';
    p_phoneNo.style.display='block';
    return false;
}



function telmodify(){
    var d_phoneNo = document.getElementById('d_phoneNo');
    var p_phoneNo = document.getElementById('p_phoneNo');
    
        d_phoneNo.style.display='block';
        p_phoneNo.style.display='none';
        
    
    return false;
}



function emailnone(){
    var d_myLetterEmail = document.getElementById('d_myLetterEmail');
    var p_myLetterEmail = document.getElementById('p_myLetterEmail');
    d_myLetterEmail.style.display='none';
    p_myLetterEmail.style.display='block';
    return false;
}



function emailmodify(){
    var d_myLetterEmail = document.getElementById('d_myLetterEmail');
    var p_myLetterEmail = document.getElementById('p_myLetterEmail');
    
        d_myLetterEmail.style.display='block';
        p_myLetterEmail.style.display='none';
        
    
    return false;
}