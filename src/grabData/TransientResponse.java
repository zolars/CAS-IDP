package grabData;

import hibernatePOJO.EventPower;

import java.util.List;

public class TransientResponse {
    private String code;
    private List<EventPower> result;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public List<EventPower> getResult() {
        return result;
    }

    public void setResult(List<EventPower> result) {
        this.result = result;
    }
}
