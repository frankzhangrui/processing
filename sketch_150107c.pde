void setup(){
    size(400,400);
}
void draw(){
    background(255); 
    Complex x=new Complex(mouseX/100.-2,mouseY/100.-2);
    ArrayList<Complex> a_old = new ArrayList();
    Complex tmp=new Complex(0,0);
    a_old.add(tmp);
    for(int i=0;i<=9;i++){   
        ArrayList<Complex> a_new = new ArrayList();
        Complex y=x.pow(i);
        for(int j=0;j<a_old.size();j++){ 
            Complex tem=new Complex(a_old.get(j).plus(y));
            a_new.add(tem);
            Complex tem1=new Complex(a_old.get(j).minus(y));
            a_new.add(tem1);
        }
        a_old.clear();
        for(int k=0;k< a_new.size();k++){
             a_old.add(a_new.get(k));
         }
    }
    colorMode(RGB);
    randomSeed(0);
    for(int i=0;i<a_old.size();i++){   
        float randomNum1 =random(255);
        float randomNum2 =random(255);
        float randomNum3 =random(255);
        fill(randomNum1,randomNum2,randomNum3);
        ellipse((int)(100*(a_old.get(i).real()+2)),(int)(100*(a_old.get(i).imag()+2)),5,5);
    }
}

  
  
