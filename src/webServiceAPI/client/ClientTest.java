package webServiceAPI.client;

public class ClientTest {
    public static void main(String[] args) {
        GetDataImplService factory = new GetDataImplService();
        GetDataImpl getdataImpl = factory.getGetDataImplPort();

        String result = getdataImpl.getOnlineData("1","3");
        System.out.println("result:" + result);
    }
}
