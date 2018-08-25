package grabData;

import java.util.List;

public class TransientResponse {
    private String code;
    private List<TransientEvent> result;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public List<TransientEvent> getResult() {
        return result;
    }

    public void setResult(List<TransientEvent> result) {
        this.result = result;
    }
}
