$(document).ready(function () {
    $(".dropdown").dropdown();

    /*$('.poup').click(function(){
     var _html="<p>111111asdfasdfas33333333333333333</p><p> <a href='###' class='btn-close111'>确认</a></p>";
     _dialog({width:"480px",height:"400px",htmlContent:_html});
     });*/

    //tab切换
    _tab({
        tabNav: '.tabTest li',
        tabCon: '.tabContent',
        handle: 'click',
        curClass: 'on'
    });
    //弹出模态层
    $('.popBtn').click(function () {
        $(".popup").OpenDiv();
    });
    $(".closePop").click(function () {
        $(".popup").CloseDiv();
    });
    //奇偶变色，添加样式
    if ($(".tb").length > 0) {
        $('.tb tr:odd').addClass('odd');
        $('.tb tr:even').addClass('even');
        $(".tb tr td").hover(
            function () {
                $(this).parent().addClass("tdHover");
            }, function () {
                $(this).parent().removeClass("tdHover");
            });
    }      ;
    //会员管理弹出层
    $('.btnDelMenber').click(function () {
        $(".delMenber").OpenDiv();
    });
    $('.btnAddMenber').click(function () {
        $(".addMenber").OpenDiv();
    });
    $('.btnEditMenber').click(function () {
        $(".editMenber").OpenDiv();
    });

    $('.btnBillMenber').click(function () {
        $(".billMenber").OpenDiv();
    });
    $('.btnDeductions').click(function () {
        $(".deductions").OpenDiv();
    });
    $('.btnRecharge').click(function () {
        $(".recharge").OpenDiv();
    });

});
   
   