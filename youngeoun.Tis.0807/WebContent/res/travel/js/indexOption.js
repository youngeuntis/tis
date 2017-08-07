/*
Reference: http://jsfiddle.net/BB3JK/47/
*/

$('select').each(function(){
    var $this = $(this), numberOfOptions = $(this).children('option').length;

    $this.addClass('select-hidden'); 
    $this.wrap('<div class="select"></div>');
    $this.after('<div class="select-styled"></div>');

    var $styledSelect = $this.next('div.select-styled');
    $styledSelect.text($this.children('option').eq(0).text());
    
    var $list = $('<ul />', {
        'class': 'select-options'
    }).insertAfter($styledSelect);
  
    for (var i = 0; i < numberOfOptions; i++) {
        $('<li />', {
            text: $this.children('option').eq(i).text(),
            rel: $this.children('option').eq(i).val()
        }).appendTo($list);
    }
  
    var $listItems = $list.children('li');
  
    $styledSelect.click(function(e) {
              
        e.stopPropagation();
        $('div.select-styled.active').not(this).each(function(){
            $(this).removeClass('active').next('ul.select-options').hide();
        });
        $(this).toggleClass('active').next('ul.select-options').toggle();
    });
  
    $listItems.click(function(e) {
        e.stopPropagation();
        $styledSelect.text($(this).text()).removeClass('active');
        if($styledSelect.text()=="대한민국"){
            document.getElementById("country_select").innerHTML="<option>서울</option><option>부산</option>";
        }
        $this.val($(this).attr('rel'));
        $list.hide();
        //console.log($this.val());
    });
  
    $(document).click(function() {
        $styledSelect.removeClass('active');
        $list.hide();
    });
    
   

});

 function zzz(){
    var firstSelect = document.getElementById("sl").value;
    alert("gk");
    /*if(firstSelect=="a") document.getElementById("country_select").innerHTML
    = '<option value="hide">-- Country --</option>'
    + '<option value="서울">서울</option>'
    + '<option value="경기">경기</option>'
    + '<option value="제주">제주</option>'
    + '<option value="부산">부산</option>'
    + '<option value="강원도">강원도</option>'
    + '<option value="충청도">충청도</option>'
    + '<option value="경상도">경상도</option>'
    + '<option value="전라도">전라도</option>';*/
}