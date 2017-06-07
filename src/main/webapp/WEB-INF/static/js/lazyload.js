var lazyLoad = function (id, callBack) {

    var getClient = function () {
        var t, h;
        t = document.documentElement.scrollTop || document.body.scrollTop;
        h = document.documentElement.clientHeight;
        return {
            top: t,
            height: h
        };
    };
    var getSubClient = function (p) {
        var t = 0, h;
        var $p = $(p).parents();
        for (var i = 0, l = $p.length; i < l; i++) {
            if ($p.eq(i).css("position") == 'fixed') {
                t = document.documentElement.scrollTop || document.body.scrollTop;
                break;
            }
        }
        h = p.offsetHeight;
        if (h > 0) {
            while (p.offsetParent) {
                t += p.offsetTop;
                p = p.offsetParent;
            }
        }
        return {
            top: t,
            height: h
        };
    };
    var cross = function (rec1, rec2) {
        var tc1, tc2, h1;
        tc1 = rec1.top + rec1.height / 2;
        tc2 = rec2.top + rec2.height / 2;
        h1 = (rec1.height + rec2.height) / 2;
        return Math.abs(tc1 - tc2) < h1;
    };

    $(id).each(function () {
        var div1 = this;
		var st;
        var scroll = function () {
            var prec1 = getClient();
            var prec2 = getSubClient(div1);
            if (cross(prec1, prec2)) {
//                $(window).off('scroll', scroll);
				clearInterval(st);
                if (callBack) {
                    callBack();
                }
            }
        };
//        $(window).on('scroll', scroll);
//        scroll();
		st = setInterval(scroll,200);
    })
};