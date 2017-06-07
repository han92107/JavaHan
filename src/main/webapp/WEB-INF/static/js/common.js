//保存成功提示
function submit_prompt() {
var htmlVal='<div class="layer-box qrPrompt"><h6 class="layerTitle">提示<a href="javascript:void(0)"class="closeBtn"onclick="EasyMask.close()"></a></h6><div class="promptBox"><i></i><h6 class="colorOrange" style="padding-bottom:40px">恭喜你，保存成功！</h6></div></div>';
EasyMask.init({ width:340,height:150, html:htmlVal, opacity:1, molor: 'white', fclose: false });
setTimeout("EasyMask.close()",3000);
}
//删除提示
function del_prompt() {
var htmlVal='<div class="layer-box qrPrompt"><h6 class="layerTitle">删除提示<a href="javascript:void(0)"class="closeBtn"onclick="EasyMask.close()"></a></h6><div class="promptBox"><i></i><h6 class="colorOrange">该信息将被删除，删除后不可恢复！</h6><div class="submitDiv"><a href="javascript:void(0)" class="blueBut small-blueBut"onclick="EasyMask.close()">确 认<s></s></a><a href="javascript:void(0)" class="grayBut small-grayBut"onclick="EasyMask.close()" style="margin-left:10px">取 消<s></s></a></div></div></div>';
EasyMask.init({ width:450,height:150, html:htmlVal, opacity:1, molor: 'white', fclose: false });
}