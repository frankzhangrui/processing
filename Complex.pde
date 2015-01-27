public class Complex extends Object {
    private double x,y;
    public Complex(double u,double v) {
        x=u;
        y=v;
    }
    public Complex(Complex w)
    {
      this.x=w.x;
      this.y=w.y;
    }
    public double real() {
        return x;
    }
    public double imag() {
        return y;
    }
    public Complex plus(Complex w) {
        return new Complex(x+w.real(),y+w.imag());
    }
    
    public Complex minus(Complex w) {
        return new Complex(x-w.real(),y-w.imag());
    }
    
    public Complex times(Complex w) {
        return new Complex(x*w.real()-y*w.imag(),x*w.imag()+y*w.real());
    }
    
   public Complex pow(int n){
     if(n==0) return new Complex(1,0);
     if(n%2==1){
       Complex x=new Complex(this.pow(n/2));
       Complex y=new Complex(x.times(x));
       return y.times(this);
     }
     else{
       Complex x=new Complex(this.pow(n/2));
       Complex y=new Complex(x.times(x));
       return y;
     }
   }     
}

