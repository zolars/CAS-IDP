package grabData;

public class TransientEvent {
    private String time;
    private int type;
    private int duration;
    private double value;
    private int subtype;

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public double getValue() {
        return value;
    }

    public void setValue(double value) {
        this.value = value;
    }

    public int getSubtype() {
        return subtype;
    }

    public void setSubType(int subtype) {
        this.subtype = subtype;
    }
}
