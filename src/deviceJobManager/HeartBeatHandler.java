package deviceJobManager;

import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.handler.timeout.IdleStateEvent;

public class HeartBeatHandler extends ChannelInboundHandlerAdapter {
    public static int timeout=15;
    public static int reConnectInterval=20;

    private String host;
    private int port;
    private String did;
    private int type;

    public HeartBeatHandler(String host, int port, String did,int type) {
        this.host = host;
        this.port = port;
        this.did = did;
        this.type=type;
    }

    @Override
    public void userEventTriggered(ChannelHandlerContext ctx, Object evt) throws Exception {
//        super.userEventTriggered(ctx, evt);
        if(evt instanceof IdleStateEvent){
            System.out.println("timeout");
            ctx.close();

            // reconnect
            new Thread(){
                @Override
                public void run() {
                    while (!DeviceManager.checkNetwork(host,port)){
                        try {
                            Thread.sleep(reConnectInterval*1000);    // reconnect per 20s
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                    DeviceManager.addDevice(host,port,did,type);
                }
            }.start();

        }
    }

    @Override
    public void handlerRemoved(ChannelHandlerContext ctx) throws Exception {
        super.handlerRemoved(ctx);
        System.out.println("********removed heartHandler**********");
    }
}

