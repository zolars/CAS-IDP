package alarmUtil;

import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.http.websocketx.TextWebSocketFrame;

import java.util.ArrayList;
import java.util.List;

public class AlarmUtil {
    private static List<ChannelHandlerContext> ctxs = new ArrayList<ChannelHandlerContext>();

    public static boolean sendMsg(String msg) {
        if (ctxs.isEmpty()) {
            return false;
        }
        for (ChannelHandlerContext ctx : ctxs) {
            ctx.writeAndFlush(new TextWebSocketFrame(msg));
        }
        return true;
    }

    public static List<ChannelHandlerContext> getCtxs() {
        return ctxs;
    }

    public static void setCtxs(List<ChannelHandlerContext> ctxs) {
        AlarmUtil.ctxs = ctxs;
    }
}
