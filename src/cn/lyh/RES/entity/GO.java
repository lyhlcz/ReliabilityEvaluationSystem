package cn.lyh.RES.entity;

public class GO {
    private double a;
    private double b;
    private double ts;

    public GO(double a, double b, double ts){
        this.a = a;
        this.b = b;
        this.ts = ts;
    }

    public double getA() {
        return a;
    }

    public void setA(double a) {
        this.a = a;
    }

    public double getB() {
        return b;
    }

    public void setB(double b) {
        this.b = b;
    }

    public double getTs() {
        return ts;
    }

    public void setTs(double ts) {
        this.ts = ts;
    }

    public double F(double s){
        double m = a*(1-Math.exp(-b*s));
        return 1 - Math.exp(-m*Math.exp(-b*ts));
    }

    public double f(double s){
        double m = a*(1-Math.exp(-b*s));
        return Math.exp(-m*Math.exp(-b*ts))*Math.exp(-b*ts)*a*b*Math.exp(-b*s);
    }
    /*
    def GO_F(s):
    m = a*(1-math.e**(-b*s))
            return 1 - math.e**(-m*math.e**(-b*ts))
    def GO_f(s):
    m = a*(1-math.e**(-b*s))
            return math.e**(-m*math.e**(-b*ts))*math.e**(-b*ts)*a*b*math.e**(-b*s)
    */
}
