package cn.lyh.RES.entity;

public class JM {
    private double N;
    private double i;
    private double phi;

    public JM(double n, double i, double phi) {
        N = n;
        this.i = i;
        this.phi = phi;
    }

    public double getN() {
        return N;
    }

    public void setN(double n) {
        N = n;
    }

    public double getI() {
        return i;
    }

    public void setI(double i) {
        this.i = i;
    }

    public double getPhi() {
        return phi;
    }

    public void setPhi(double phi) {
        this.phi = phi;
    }

    public double F(double t){
        return 1 - Math.exp(-phi*(N-i+1)*t);
        //1-math.e**(-fi*(N-n+1)*t);
    }

    public double f(double t){
        return phi*(N-i+1)*Math.exp(-phi*(N-i+1)*t);
        //return fi*(N-n+1)*math.e**(-fi*(N-n+1)*t);
    }
}
