package grabData;

import io.netty.bootstrap.Bootstrap;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.ChannelOption;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioSocketChannel;



public class DataOnlineClient {

    public static void dataGet() throws Exception{
        String host="192.168.1.240";
        int port=502;

        EventLoopGroup workerGroup = new NioEventLoopGroup();
        try{
            Bootstrap b = new Bootstrap();
            b.group(workerGroup);
            b.channel(NioSocketChannel.class);
            b.option(ChannelOption.SO_KEEPALIVE, Boolean.valueOf(true));
            b.handler(new ChannelInitializer<SocketChannel>()
            {
                public void initChannel(SocketChannel ch)
                        throws Exception
                {

                    ch.pipeline().addLast(new DataOnlineClientHandler());
                    System.out.println("HANDLER-BUILT#####################################");

                }
            });
            ChannelFuture f = b.connect(host, port).sync();
            f.channel().closeFuture().sync();
        }
        finally
        {
            workerGroup.shutdownGracefully();
        }
    }

}
