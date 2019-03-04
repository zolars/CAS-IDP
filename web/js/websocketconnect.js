// 获取用户浏览器通知权限
Notification.requestPermission(function (status) {
    if (status === "granted") {
        // 通知权限已取得
    } else {
        // TODO: 网页内置通知显示
    }
});

var notifyList = new Array();

function notifyShow() {
    new PNotify({
        title: 'IDP系统告警 ! ! !',
        text: notifyList.slice(0, 1).join("\n\n\n"), // 调整 基础显示条目
        icon: 'glyphicon glyphicon-question-sign',
        hide: false,
        animate_speed: 'fast',
        confirm: {
            confirm: true,
            buttons: [
                {
                    text: '关闭',
                    addClass: 'btn-primary',
                    click: function (notice) {
                        notifyList = new Array();
                        notice.remove();
                    }
                },null]
        },
        buttons: {
            closer: false,
            sticker: false
        },
        history: {
            history: false
        }
    });
}

function notifyShowMore() {
    new PNotify({
        title: 'IDP系统告警 ! ! !',
        text: notifyList.slice(0, 1).join("\n\n\n"),
        icon: 'glyphicon glyphicon-question-sign',
        hide: false,
        animate_speed: 'fast',
        confirm: {
            confirm: true,
            buttons: [
                {
                    text: '更多信息',
                    click: function (notice) {
                        notifyMore(notice);
                    }
                }, {
                    text: '关闭',
                    addClass: 'btn-primary',
                    click: function (notice) {
                        notifyList = new Array();
                        notice.remove();
                    }
                }]
        },
        buttons: {
            closer: false,
            sticker: false
        },
        history: {
            history: false
        }
    });
}

function notifyMore(notice) {
    notice.update({
        title: 'IDP系统告警 ! ! !',
        text: notifyList.slice(0, 10).join("\n\n\n"), //调整 更多显示条目
        icon: true,
        type: 'info',
        hide: false,
        animate_speed: 'fast',
        confirm: {
            confirm: true,
            buttons: [
                {
                    text: '隐藏',
                    click: function (notice) {
                        notifyLess(notice);
                    }
                }, {
                    text: '关闭',
                    addClass: 'btn-primary',
                    click: function (notice) {
                        notifyList = new Array();
                        notice.remove();
                    }
                }]
        },
        buttons: {
            closer: false,
            sticker: false
        },
        history: {
            history: false
        }
    });
}

function notifyLess(notice) {
    notice.update({
        title: 'IDP系统告警 ! ! !',
        text: notifyList.slice(0, 1).join("\n\n\n"),
        type: 'regular',
        icon: 'glyphicon glyphicon-question-sign',
        hide: false,
        animate_speed: 'fast',
        confirm: {
            confirm: true,
            buttons: [
                {
                    text: '更多信息',
                    click: function (notice) {
                        notifyMore(notice);
                    }
                }, {
                    text: '关闭',
                    addClass: 'btn-primary',
                    click: function (notice) {
                        notifyList = new Array();
                        notice.remove();
                    }
                }]
        },
        buttons: {
            closer: false,
            sticker: false
        },
        history: {
            history: false
        }
    });
}

var socket;
if (!window.WebSocket) {
    window.WebSocket = window.MozWebSocket;
}
if (window.WebSocket) {
    // 处理服务端地址
    ip = window.location.hostname;
    port = window.location.port;
    if (ip.indexOf("localhost") > 0) {
        ip = "localhost";
    }
    socket = new WebSocket("ws://" + ip + ":8989/ws");
    socket.onmessage = function (event) {
        if(event.data=="test-data"){
            return;
        }
        PNotify.removeAll();
            if (notifyList.unshift(event.data) > 3)
                notifyShowMore();
            else
                notifyShow();

        // if (window.Notification && Notification.permission !== "denied") {
        //     Notification.requestPermission(function (status) {
        //         var n = new Notification('IDP系统告警 ! ! !', {body: event.data});
        //         n.onclick = function () {
        //             window.open("http://" + ip + ":" + port + "/efficiencyAnalysis.jsp");
        //         };
        //         n.close();
        //     });
        // } else {
        //     PNotify.removeAll();
        //     if (notifyList.unshift(event.data) > 3)
        //         notifyShowMore();
        //     else
        //         notifyShow();
        // }
    };
    socket.onopen = function (event) {
        console.log(new Date()+":opened");
        socket.send("test-data");
    };
    socket.onclose = function (event) {
        console.log(new Date()+":closed");
    };
} else {
    alert("您的浏览器不支持WebSocket!");
}
