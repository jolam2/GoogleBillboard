public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{      
  int a = 0; 
  String digits = e.substring(0, 11);
  double dNum = Double.parseDouble(digits);
  while(isPrime(dNum) == false){
    digits = e.substring(0 + a, a + 10);
    dNum = Double.parseDouble(digits);
    a++;
  }
  System.out.println(dNum);
  System.out.println(isPrime(dNum));
}  
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
  double j = Math.sqrt(dNum);
  for (int i = 2; i <= j; i++){
    if(dNum % i == 0){
      return false;
    }
  }
  return true;
}

