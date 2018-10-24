package grabData;

import javax.websocket.*;
import java.io.IOException;

@ClientEndpoint
public class WebSocketClient {
    private Session session;

    @OnOpen
    public void open(Session session) {
        this.session = session;
    }

    @OnMessage
    public void onMessage(String message) {
        System.out.println("\n\n\n woshoudaole : " + message + "\n\n\n");
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