package grabData;

import hibernatePOJO.EventTransient;

import java.util.List;

public class TransientResponse {
    private String code;
    private List<EventTransient> result;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public List<EventTransient> getResult() {
        return result;
    }

    public void setResult(List<EventTransient> result) {
        this.result = result;
    }
}
