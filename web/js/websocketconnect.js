var socket;
if (!window.WebSocket) {
    window.WebSocket = window.MozWebSocket;
}
if (window.WebSocket) {
    socket = new WebSocket("ws://localhost:2048/ws");
    socket.onmessage = function (event) {
        alert(event.data);
    };
    socket.onopen = function (event) {
    };
    socket.onclose = function (event) {
    };
} else {
    alert("您的浏览器不支持WebSocket！");
}