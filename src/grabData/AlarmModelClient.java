package grabData;

import io.netty.bootstrap.ServerBootstrap;
import io.netty.channel.Channel;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelHandler;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.group.ChannelGroup;
import io.netty.channel.group.DefaultChannelGroup;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.nio.NioServerSocketChannel;
import io.netty.util.concurrent.ImmediateEventExecutor;

import java.net.InetSocketAddress;

public class AlarmModelClient {

    private final ChannelGroup group = new DefaultChannelGroup(ImmediateEventExecutor.INSTANCE);
    private final EventLoopGroup workerGroup = new NioEventLoopGroup();
    private Channel channel;

    public ChannelFuture start(InetSocketAddress address) {
        ServerBootstrap boot = new ServerBootstrap();
        boot.group(workerGroup).channel(NioServerSocketChannel.class).childHandler(createInitializer(group));

        ChannelFuture f = boot.bind(address).syncUninterruptibly();
        channel = f.channel();
        return f;
    }

    protected ChannelHandler createInitializer(ChannelGroup group2) {
        return new AlarmModelClientInitializer(group2);
    }

    public void destroy() {
        if (channel != null) channel.close();
        group.close();
        workerGroup.shutdownGracefully();
    }
}