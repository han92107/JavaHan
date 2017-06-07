!function ($) {
    // DROPDOWN CLASS DEFINITION
    var toggle = '[data-toggle="dropdown"]',
        Dropdown = function (element) {
            var $el = $(element).find("dt").on('click', this.toggle)
            var _select = $(element)
            var _span = _select.find("span")
            var _val = _select.find("input")
            var _type = _select.attr("dropdown-type");
            var _relative = _select.attr("dropdown-relative");


            $(element).find("a").live("click", function () {

                _span.html(this.innerHTML);

                if ("select" == _type) {
                    _val.val(this.getAttribute("data-value"));
                    _select.removeClass('dropdown-open');


                    if (_relative) {
                        var _ids = _relative.split(",");
                        for (var k in _ids) {
                            var $id = _select.parents("body").find(_ids[k].split("|")[0]);
                            var url = _ids[k].split("|")[1];
                            var value = this.getAttribute("data-value");
                            (function ($id, _url, _value) {
                                $.post(_url, {
                                    r: _value
                                }, function (data) {
                                    var _item = '';
                                    for (var i in data.list) {
                                        _item += '<li><a href="#" data-value="' + data.list[i].value + '">' + data.list[i].name + '</a></li>';
                                    }
                                    $id.find("dt span").html(data.tip).siblings('input:hidden').val(0);
                                    $id.find("ul").html(_item);
                                    $id.find("ul a").eq(0).trigger("click");
                                }, 'json');
                            })($id, url, value);
                        }
                    }

                    return false;
                }
            })

            //clear
            $('html').on('click', function () {
                _select.removeClass('dropdown-open');
            })


            _select.find("a").each(function () {
                var _this = $(this);
                if (_this.attr("selected")) {
                    _this.trigger("click");
                }
            })
        }

    Dropdown.prototype = {
        constructor: Dropdown,
        toggle: function (e) {
            var $this = $(this) , $parent
            if ($this.is('.disabled, :disabled')) return

            $(".dropdown").removeClass('dropdown-open');

            $parent = $this.parent();

            if (!$parent.hasClass('dropdown-open')) $parent.toggleClass('dropdown-open');
            return false
        }
    }

    /* DROPDOWN PLUGIN DEFINITION ========================== */

    $.fn.dropdown = function (option) {
        return this.each(function () {
            var $this = $(this) , data = $this.data('dropdown')
            if (!data) $this.data('dropdown', (data = new Dropdown($this)))
            if (typeof option == 'string') data[option].call($this)
        })
    }

    $.fn.dropdown.Constructor = Dropdown

}(window.jQuery);

//日期框样式开始
var $dp, WdatePicker;
(function () {
    var $ = {
        $langList: [
            {name: "en", charset: "UTF-8"},
            {name: "zh-cn", charset: "UTF-8"},
            {name: "zh-tw", charset: "UTF-8"}
        ],
        $skinList: [
            {name: "default", charset: "gb2312"},
            {name: "whyGreen", charset: "gb2312"},
            {name: "blue", charset: "gb2312"},
            {name: "green", charset: "gb2312"},
            {name: "ext", charset: "gb2312"},
            {name: "blueFresh", charset: "gb2312"}
        ],
        $wdate: true,
        $crossFrame: false,
        $preLoad: false,
        doubleCalendar: false,
        enableKeyboard: true,
        enableInputMask: true,
        autoUpdateOnChanged: null,
        weekMethod: "ISO8601",
        position: {},
        lang: "auto",
        skin: "default",
        dateFmt: "yyyy-MM-dd",
        realDateFmt: "yyyy-MM-dd",
        realTimeFmt: "HH:mm:ss",
        realFullFmt: "%Date %Time",
        minDate: "1900-01-01 00:00:00",
        maxDate: "2099-12-31 23:59:59",
        startDate: "",
        alwaysUseStartDate: false,
        yearOffset: 1911,
        firstDayOfWeek: 0,
        isShowWeek: false,
        highLineWeekDay: true,
        isShowClear: true,
        isShowToday: true,
        isShowOK: true,
        isShowOthers: true,
        readOnly: false,
        errDealMode: 0,
        autoPickDate: null,
        qsEnabled: true,
        autoShowQS: false,

        specialDates: null, specialDays: null, disabledDates: null, disabledDays: null, opposite: false, onpicking: null, onpicked: null, onclearing: null, oncleared: null, ychanging: null, ychanged: null, Mchanging: null, Mchanged: null, dchanging: null, dchanged: null, Hchanging: null, Hchanged: null, mchanging: null, mchanged: null, schanging: null, schanged: null, eCont: null, vel: null, elProp: "", errMsg: "", quickSel: [], has: {}, getRealLang: function () {
            var _ = $.$langList;
            for (var A = 0; A < _.length; A++)if (_[A].name == this.lang)return _[A];
            return _[0]
        }};
    WdatePicker = T;
    var X = window, S = {innerHTML: ""}, M = "document", H = "documentElement", C = "getElementsByTagName", U, A, R, G, a, W = navigator.appName;
    if (W == "Microsoft Internet Explorer")R = true; else if (W == "Opera")a = true; else G = true;
    A = J();
    if ($.$wdate)K(A + "skin/WdatePicker.css");
    U = X;
    if ($.$crossFrame) {
        try {
            while (U.parent && U.parent[M] != U[M] && U.parent[M][C]("frameset").length == 0)U = U.parent
        } catch (N) {
        }
    }
    if (!U.$dp)U.$dp = {ff: G, ie: R, opera: a, status: 0, defMinDate: $.minDate, defMaxDate: $.maxDate};
    B();
    if ($.$preLoad && $dp.status == 0)E(X, "onload", function () {
        T(null, true)
    });
    if (!X[M].docMD) {
        E(X[M], "onmousedown", D);
        X[M].docMD = true
    }
    if (!U[M].docMD) {
        E(U[M], "onmousedown", D);
        U[M].docMD = true
    }
    E(X, "onunload", function () {
        if ($dp.dd)O($dp.dd, "none")
    });
    function B() {
        U.$dp = U.$dp || {};
        obj = {$: function ($) {
            return(typeof $ == "string") ? X[M].getElementById($) : $
        }, $D: function ($, _) {
            return this.$DV(this.$($).value, _)
        }, $DV: function (_, $) {
            if (_ != "") {
                this.dt = $dp.cal.splitDate(_, $dp.cal.dateFmt);
                if ($)for (var B in $)if (this.dt[B] === undefined)this.errMsg = "invalid property:" + B; else {
                    this.dt[B] += $[B];
                    if (B == "M") {
                        var C = $["M"] > 0 ? 1 : 0, A = new Date(this.dt["y"], this.dt["M"], 0).getDate();
                        this.dt["d"] = Math.min(A + C, this.dt["d"])
                    }
                }
                if (this.dt.refresh())return this.dt
            }
            return""
        }, show: function () {
            var A = U[M].getElementsByTagName("div"), $ = 100000;
            for (var B = 0; B < A.length; B++) {
                var _ = parseInt(A[B].style.zIndex);
                if (_ > $)$ = _
            }
            this.dd.style.zIndex = $ + 2;
            O(this.dd, "block")
        }, hide: function () {
            O(this.dd, "none")
        }, attachEvent: E};
        for (var $ in obj)U.$dp[$] = obj[$];
        $dp = U.$dp
    }

    function E(A, $, _) {
        if (R)A.attachEvent($, _); else if (_) {
            var B = $.replace(/on/, "");
            _._ieEmuEventHandler = function ($) {
                return _($)
            };
            A.addEventListener(B, _._ieEmuEventHandler, false)
        }
    }

    function J() {
        var _, A, $ = X[M][C]("script");
        for (var B = 0; B < $.length; B++) {
            _ = $[B].getAttribute("src") || "";
            _ = _.substr(0, _.toLowerCase().indexOf("wdatepicker.js"));
            A = _.lastIndexOf("/");
            if (A > 0)_ = _.substring(0, A + 1);
            if (_)break
        }
        return _
    }

    function K(A, $, B) {
        var D = X[M][C]("HEAD").item(0), _ = X[M].createElement("link");
        if (D) {
            _.href = A;
            _.rel = "stylesheet";
            _.type = "text/css";
            if ($)_.title = $;
            if (B)_.charset = B;
            D.appendChild(_)
        }
    }

    function F($) {
        $ = $ || U;
        var A = 0, _ = 0;
        while ($ != U) {
            var D = $.parent[M][C]("iframe");
            for (var F = 0; F < D.length; F++) {
                try {
                    if (D[F].contentWindow == $) {
                        var E = V(D[F]);
                        A += E.left;
                        _ += E.top;
                        break
                    }
                } catch (B) {
                }
            }
            $ = $.parent
        }
        return{"leftM": A, "topM": _}
    }

    function V(G, F) {
        if (G.getBoundingClientRect)return G.getBoundingClientRect(); else {
            var A = {ROOT_TAG: /^body|html$/i, OP_SCROLL: /^(?:inline|table-row)$/i}, E = false, I = null, _ = G.offsetTop, H = G.offsetLeft, D = G.offsetWidth, B = G.offsetHeight, C = G.offsetParent;
            if (C != G)while (C) {
                H += C.offsetLeft;
                _ += C.offsetTop;
                if (Q(C, "position").toLowerCase() == "fixed")E = true; else if (C.tagName.toLowerCase() == "body")I = C.ownerDocument.defaultView;
                C = C.offsetParent
            }
            C = G.parentNode;
            while (C.tagName && !A.ROOT_TAG.test(C.tagName)) {
                if (C.scrollTop || C.scrollLeft)if (!A.OP_SCROLL.test(O(C)))if (!a || C.style.overflow !== "visible") {
                    H -= C.scrollLeft;
                    _ -= C.scrollTop
                }
                C = C.parentNode
            }
            if (!E) {
                var $ = Z(I);
                H -= $.left;
                _ -= $.top
            }
            D += H;
            B += _;
            return{"left": H, "top": _, "right": D, "bottom": B}
        }
    }

    function L($) {
        $ = $ || U;
        var B = $[M], A = ($.innerWidth) ? $.innerWidth : (B[H] && B[H].clientWidth) ? B[H].clientWidth : B.body.offsetWidth, _ = ($.innerHeight) ? $.innerHeight : (B[H] && B[H].clientHeight) ? B[H].clientHeight : B.body.offsetHeight;
        return{"width": A, "height": _}
    }

    function Z($) {
        $ = $ || U;
        var B = $[M], A = B[H], _ = B.body;
        B = (A && A.scrollTop != null && (A.scrollTop > _.scrollTop || A.scrollLeft > _.scrollLeft)) ? A : _;
        return{"top": B.scrollTop, "left": B.scrollLeft}
    }

    function D($) {
        var _ = $ ? ($.srcElement || $.target) : null;
        try {
            if ($dp.cal && !$dp.eCont && $dp.dd && _ != $dp.el && $dp.dd.style.display == "block")$dp.cal.close()
        } catch ($) {
        }
    }

    function Y() {
        $dp.status = 2
    }

    var P, _;

    function T(N, F) {
        $dp.win = X;
        B();
        N = N || {};
        for (var K in $)if (K.substring(0, 1) != "$" && N[K] === undefined)N[K] = $[K];
        if (F) {
            if (!L()) {
                _ = _ || setInterval(function () {
                    if (U[M].readyState == "complete")clearInterval(_);
                    T(null, true)
                }, 50);
                return
            }
            if ($dp.status == 0) {
                $dp.status = 1;
                N.el = S;
                I(N, true)
            } else return
        } else if (N.eCont) {
            N.eCont = $dp.$(N.eCont);
            N.el = S;
            N.autoPickDate = true;
            N.qsEnabled = false;
            I(N)
        } else {
            if ($.$preLoad && $dp.status != 2)return;
            var J = H();
            if (J) {
                N.srcEl = J.srcElement || J.target;
                J.cancelBubble = true
            }
            N.el = N.el = $dp.$(N.el || N.srcEl);
            if (!N.el || N.el["My97Mark"] === true || N.el.disabled || ($dp.dd && O($dp.dd) != "none" && $dp.dd.style.left != "-970px")) {
                try {
                    N.el["My97Mark"] = false
                } catch (C) {
                }
                return
            }
            I(N);
            if (J && N.el.nodeType == 1 && N.el["My97Mark"] === undefined) {
                var A, D;
                if (J.type == "focus") {
                    A = "onclick";
                    D = "onfocus"
                } else {
                    A = "onfocus";
                    D = "onclick"
                }
                E(N.el, A, N.el[D])
            }
        }
        function L() {
            if (R && U != X && U[M].readyState != "complete")return false;
            return true
        }

        function H() {
            if (G) {
                func = H.caller;
                while (func != null) {
                    var $ = func.arguments[0];
                    if ($ && ($ + "").indexOf("Event") >= 0)return $;
                    func = func.caller
                }
                return null
            }
            return event
        }
    }

    function Q(_, $) {
        return _.currentStyle ? _.currentStyle[$] : document.defaultView.getComputedStyle(_, false)[$]
    }

    function O(_, $) {
        if (_)if ($ != null)_.style.display = $; else return Q(_, "display")
    }

    function I(G, _) {
        var D = G.el ? G.el.nodeName : "INPUT";
        if (_ || G.eCont || new RegExp(/input|textarea|div|span|p|a/ig).test(D))G.elProp = D == "INPUT" ? "value" : "innerHTML"; else return;
        if (G.lang == "auto")G.lang = R ? navigator.browserLanguage.toLowerCase() : navigator.language.toLowerCase();
        if (!G.eCont)for (var C in G)$dp[C] = G[C];
        if (!$dp.dd || G.eCont || ($dp.dd && (G.getRealLang().name != $dp.dd.lang || G.skin != $dp.dd.skin))) {
            if (G.eCont)E(G.eCont, G); else {
                $dp.dd = U[M].createElement("DIV");
                $dp.dd.style.cssText = "position:absolute";
                U[M].body.appendChild($dp.dd);
                E($dp.dd, G);
                if (_)$dp.dd.style.left = $dp.dd.style.top = "-970px"; else {
                    $dp.show();
                    B($dp)
                }
            }
        } else if ($dp.cal) {
            $dp.show();
            $dp.cal.init();
            if (!$dp.eCont)B($dp)
        }
        function E(F, E) {
            F.innerHTML = "<iframe hideFocus=true width=97 height=9 frameborder=0 border=0 scrolling=no></iframe>";
            var D = F.lastChild.contentWindow[M], _ = $.$langList, C = $.$skinList, H = E.getRealLang();
            F.lang = H.name;
            F.skin = E.skin;
            var G = ["<head><script>", "var $d, $dp, $cfg=document.cfg, $pdp = parent.$dp, $dt, $tdt, $sdt, $lastInput, $IE=$pdp.ie, $FF = $pdp.ff,$OPERA=$pdp.opera, $ny, $cMark = false;", "if($cfg.eCont){$dp = {};for(var p in $pdp)$dp[p]=$pdp[p];}else{$dp=$pdp;};for(var p in $cfg){$dp[p]=$cfg[p];}", "document.oncontextmenu=function(){try{$c._fillQS(!$dp.has.d,1);showB($d.qsDivSel);}catch(e){};return false;};", "</script><script src=", A, "lang/", H.name, ".js charset=", H.charset, "></script>"];
            for (var I = 0; I < C.length; I++)if (C[I].name == E.skin)G.push("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + A + "skin/" + C[I].name + "/datepicker.css\" charset=\"" + C[I].charset + "\"/>");
            G.push("<script type=\"text/javascript\" src=\"" + A + "calendar.js?\"+Math.random()+\" charset=\"gb2312\"></script>");
            G.push("</head><body leftmargin=\"0\" topmargin=\"0\" tabindex=0></body></html>");
            G.push("<script>var t;t=t||setInterval(function(){if(document.ready){new My97DP();$cfg.onload();$c.autoSize();$cfg.setPos($dp);clearInterval(t);}},20);if($FF||$OPERA)document.close();</script>");
            E.setPos = B;
            E.onload = Y;
            D.write("<html>");
            D.cfg = E;
            D.write(G.join(""))
        }

        function B(I) {
            var G = I.position.left, B = I.position.top, C = I.el;
            if (C == S)return;
            if (C != I.srcEl && (O(C) == "none" || C.type == "hidden"))C = I.srcEl;
            var H = V(C), $ = F(X), D = L(U), A = Z(U), E = $dp.dd.offsetHeight, _ = $dp.dd.offsetWidth;
            if (isNaN(B))B = 0;
            if (($.topM + H.bottom + E > D.height) && ($.topM + H.top - E > 0))B += A.top + $.topM + H.top - E - 2; else B += A.top + $.topM + Math.min(H.bottom, D.height - E) + 2;
            if (isNaN(G))G = 0;
            G += A.left + Math.min($.leftM + H.left, D.width - _ - 5) - (R ? 2 : 0);
            I.dd.style.top = B + "px";
            I.dd.style.left = G + "px"
        }
    }
})()

//日期框结束

//tab样式切换
_tab = function (options) {
    this.opts = {tabNav: null, tabCon: null, handle: "click", curClass: "on"};
    opts = $.extend(opts, options);
    var b = this;
//    $(b.opts.tabCon).hide().eq(0).show();

    $(b.opts.tabNav).on(b.opts.handle, function () {
            var c = $(this),
                p = c.parent(),
                $tab = p.children(),
                $con = p.siblings(b.opts.tabCon),
                d = $con.eq($tab.index(this));
            $tab.removeClass(b.opts.curClass);
            c.addClass(b.opts.curClass);
            $con.hide();
            d.show();
            if ($(this).is("a"))
                return!1
        }
    )
};


//tab样式切换结束

//弹出模态层
jQuery.fn.extend(
    {
        OpenDiv: function () {
            var sWidth, sHeight;
//sWidth = window.screen.availWidth; 
            sWidth = $(window).width();
            if (window.screen.availHeight > document.body.scrollHeight) {
                sHeight = window.screen.availHeight;
            } else {
                sHeight = document.body.scrollHeight + 20;
            }
            var maskObj = document.createElement("div");
            maskObj.setAttribute('id', 'BigDiv');
            maskObj.style.position = "absolute";
            maskObj.style.top = "0";
            maskObj.style.left = "0";
            maskObj.style.background = "#111";
            maskObj.style.filter = "Alpha(opacity=70);";
            maskObj.style.opacity = "0.7";
            maskObj.style.width = sWidth + "px";
            maskObj.style.height = sHeight + "px";
            maskObj.style.zIndex = "10000";
//$("body").attr("scroll", "no"); 
            document.body.appendChild(maskObj);
            $("#BigDiv").data("divbox_selectlist", $("select:visible"));
            $("select:visible").hide();
//$("#BigDiv").attr("divbox_scrolltop", $.ScrollPosition().Top); 
//$("#BigDiv").attr("divbox_scrollleft", $.ScrollPosition().Left); 
//$("#BigDiv").attr("htmloverflow", $("html").css("overflow")); 
//$("html").css("overflow", "hidden"); 
//window.scrollTo($("#BigDiv").attr("divbox_scrollleft"), $("#BigDiv").attr("divbox_scrolltop")); 
            var MyDiv_w = this.width();
            var MyDiv_h = this.height();
            MyDiv_w = parseInt(MyDiv_w);
            MyDiv_h = parseInt(MyDiv_h);
            var width = $.PageSize().Width;
            var height = $.PageSize().Height;
            var left = $.ScrollPosition().Left;
            var top = $.ScrollPosition().Top;
            var Div_topposition = top + (height / 2) - (MyDiv_h / 2);
            var Div_leftposition = left + (width / 2) - (MyDiv_w / 2);
            this.css("position", "absolute");
            this.css("z-index", "10001");
            this.css("background", "#fff");
            this.css("left", Div_leftposition + "px");
            this.css("top", Div_topposition + "px");
            if ($.browser.mozilla) {
                this.show();
                return;
            }
            this.fadeIn("fast");
        }, CloseDiv: function () {
        if ($.browser.mozilla) {
            this.hide();
        } else {
            this.fadeOut("fast");
        }
        $("html").css("overflow", $("#BigDiv").attr("htmloverflow"));
//window.scrollTo($("#BigDiv").attr("divbox_scrollleft"), $("#BigDiv").attr("divbox_scrolltop")); 
        $("#BigDiv").data("divbox_selectlist").show();
        $("#BigDiv").remove();
    }
    });
$.extend(
    {
        PageSize: function () {
            var width = 0;
            var height = 0;
            width = window.innerWidth != null ? window.innerWidth : document.documentElement && document.documentElement.clientWidth ? document.documentElement.clientWidth : document.body != null ? document.body.clientWidth : null;
            height = window.innerHeight != null ? window.innerHeight : document.documentElement && document.documentElement.clientHeight ? document.documentElement.clientHeight : document.body != null ? document.body.clientHeight : null;
            return {Width: width, Height: height};
        }, ScrollPosition: function () {
        var top = 0, left = 0;
        if ($.browser.mozilla) {
            top = window.pageYOffset;
            left = window.pageXOffset;
        }
        else if ($.browser.msie) {
            top = document.documentElement.scrollTop;
            left = document.documentElement.scrollLeft;
        }
        else if (document.body) {
            top = document.body.scrollTop;
            left = document.body.scrollLeft;
        }
        return {Top: top, Left: left};
    }
    });
//弹出模态层结束
