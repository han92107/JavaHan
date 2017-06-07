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
                _valTitle=$(this).attr("title");//取出下拉列表的title 2013-7-8
                _val.val(this.setAttribute("data-value",_valTitle));//值存入input的value 2013-7-8
                //_val.val(this.setAttribute("data-value",this.innerHTML));//值存入input的value 2013-7-2

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

