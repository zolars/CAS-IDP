package alarmUtil;

import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.handler.codec.http.websocketx.TextWebSocketFrame;

public class WebSocketHandler extends SimpleChannelInboundHandler<TextWebSocketFrame> {
    @Override
    protected void channelRead0(ChannelHandlerContext ctx, TextWebSocketFrame msg) throws Exception {
        //System.out.println("wensocket receive:"+msg);
        AlarmUtil.getCtxs().add(ctx);
        System.out.println("******************"+"websocket:"+AlarmUtil.getCtxs().size()+"******************");
    }

    @Override
    public void channelInactive(ChannelHandlerContext ctx) throws Exception {
        AlarmUtil.getCtxs().remove(ctx);
    }
}
