printMovies(String name1, [String? name2, String? name3])
{

  print("Movie 1 is $name1");
  print("Movie 2 is $name2");
  print("Movie 3 is $name3");
}

printSeries(String name1, String name2, String name3)
{

  print("Show 1 is $name1");
  print("Show 2 is $name2");
  print("Show 3 is $name3");
}
void main(){
  List item = ["English","Hindi","Gujarati",1,2,3];
  for(var i in item){
    print(i);
  }
  var items = [1,2,3,4,5];
  items.forEach((var i) => (print(i)));

  printSeries("Billions", "Limitless", "White Collar");
  printMovies("Se7en","Knives Out");
}