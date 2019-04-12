package deviceJobManager;

import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;

import java.util.Date;

public class ConnectionListener implements ChannelFutureListener {
    private String host;
    private int port;
    private String did;
    private int type;

    public ConnectionListener(String host, int port, String did, int type) {
        this.host = host;
        this.port = port;
        this.did = did;
        this.type = type;
    }

    @Override
    public void operationComplete(ChannelFuture future) throws Exception {
        if (!future.isSuccess()) {
            System.out.println("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
            future.cause().printStackTrace();
            System.out.println("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
//            final EventLoop loop=future.channel().eventLoop();
//            loop.schedule(new Runnable() {
//                @Override
//                public void run() {
//                    DeviceManager.addDevice(host,port,did,type);
//                }
//            },1L,TimeUnit.SECONDS);
            Thread.sleep(2000);
            DeviceManager.addDevice(host, port, did, type);
        } else {
            System.out.println(new Date() + ":connected.");
        }
    }
}
