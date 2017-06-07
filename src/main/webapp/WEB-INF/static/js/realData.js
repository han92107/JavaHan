//实时获取-预览效果
$(function() {
  //获取文本框
  $(".wapText").blur(function() {
    var wapClass = $(this).attr("data-wap");
    var wapVal = $(this).val();
    $("." + wapClass).text(wapVal);
  });
  //下拉框
  $(".wapSelect").each(function() {
    var wapClass = $(this).attr("data-wap");
    var wapVal = $(this).text();
    $("." + wapClass).text(wapVal);
  });
  $(".dropdown dd a").mousedown(function() {
    var $this = $(this).parent().parent().parent().prev().children("span");
    var wapClass = $this.attr("data-wap");
    var wapVal = $(this).text();
    $("." + wapClass).text(wapVal);
  });
  //多选框  
  var wapChecked = function() {
    $(".wapCheckbox").each(function(index,item) {
      var $this=$(this).find("input:checked");    
      if($this.length){
        var wapHtml="";
        var wapClass = $(this).attr("data-wap");
        for (var i = 0; i < $this.length; i++) {
          var wapVal = $this.eq(i).next().text();        
          wapHtml +='<em>'+wapVal+'</em>'        
        };
        $("." + wapClass).html(wapHtml);      
      }
    });
  };
  wapChecked();
  $("input[type=checkbox]").on( "click",wapChecked);  
});