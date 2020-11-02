layui.use(['jquery', 'nprogress'], function () {
    var $ = layui.jquery,
        nprogress = layui.nprogress;

    var _ajax = $.ajax;
    $.ajax = function (opt) {

        var fn = {
            error: function (XMLHttpRequest, textStatus, errorThrown) {
            },
            success: function (data, textStatus) {
            },
            beforeSend: function (XHR) {
            },
            complete: function (XHR, TS) {
            }
        };
        if (opt.error) {
            fn.error = opt.error;
        }
        if (opt.success) {
            fn.success = opt.success;
        }
        if (opt.beforeSend) {
            fn.beforeSend = opt.beforeSend;
        }
        if (opt.complete) {
            fn.complete = opt.complete;
        }
        //扩展增强处理
        var _opt = $.extend(opt, {
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert(textStatus + "error");
                //错误方法增强处理
                fn.error(XMLHttpRequest, textStatus, errorThrown);
            },
            success: function (data, textStatus) {
                if (data.code === 0) {
                    //成功回调方法增强处理
                    fn.success(data, textStatus);
                } else if (data.code === 1001) {
                    layer.msg('登录超时', {icon: 2}, function () {
                        window.location = '/page/login.html';
                    });
                } else {
                    layer.closeAll('loading'); //关闭加载层
                    layer.msg(data.msg, {icon: 2});
                }
            },
            beforeSend: function (XHR) {
                nprogress.start();
                //提交前回调方法
                fn.beforeSend(XHR);
            },
            complete: function (XHR, TS) {
                nprogress.done();
                fn.complete(XHR, TS);
            }
        });
        return _ajax(_opt);
    };

});