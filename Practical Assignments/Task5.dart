void main(){
  for(int i = 1;i<=100;i++){
    if(i%5==0){
      if(i%3==0){
        print("FizzBuzz");
      }
      else{
        print("Buzz");
      }
    }
    else if(i%3==0){
      print("Fizz");
    }
    else{
      print(i);
    }
  }
}