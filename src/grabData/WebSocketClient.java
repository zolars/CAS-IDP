package grabData;

import javax.websocket.*;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;

@ClientEndpoint
public class WebSocketClient {
    private Session session;

    public WebSocketClient(String url) throws URISyntaxException {
        URI endpointURI = new URI(url);
        try {
            WebSocketContainer container = ContainerProvider.getWebSocketContainer();
            container.connectToServer(this, endpointURI);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    @OnOpen
    public void open(Session session) {
        this.session = session;
    }

    @OnMessage
    public void onMessage(String message) {
        System.out.println(message);
    }

    @OnClose
    public void onClose() {
    }

    @OnError
    public void onError(Session session, Throwable t) {
        t.printStackTrace();
    }

    public void send(String message) {
        this.session.getAsyncRemote().sendText(message);
    }

    public void close() throws IOException {
        if (this.session.isOpen()) {
            this.session.close();
        }
    }
}