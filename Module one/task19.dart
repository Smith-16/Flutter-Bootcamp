import 'dart:io';
class Cal
{
  final pi=3.14;
  var ans;

  Cal({var rad,var hei,var base,var cal})
  {
    if(rad==0)
      {
        if(hei!=0 && base!=0)
        {
          // ans = 0.5*a*b;
          if(cal==2) ans = 0.5*hei*base;
          else if(cal==3) ans = hei*base;
        }

      }
    if(rad!=0)
    {
      ans = pi*rad*rad;
    }

    print("Answer is $ans");


  }
}
void main()
{

  print("For area of circle press 1, For area of triangle press 2, For area of rectangle press 3");
  var c = int.parse(stdin.readLineSync().toString());

  switch(c)
  {
    case 1:
      print("\n Enter Radius");
      var r = int.parse(stdin.readLineSync().toString());
      Cal c1 = Cal(rad:r);

    case 2:


      print("\n Enter Value for a");
      var a = int.parse(stdin.readLineSync().toString());

      print("\n Enter Value for b");
      var b = int.parse(stdin.readLineSync().toString());

      Cal c1 = Cal(hei:a,base:b,cal:c,rad: 0);

    case 3:
      print("\n Enter Value for l");
      var a = int.parse(stdin.readLineSync().toString());

      print("\n Enter Value for w");
      var b = int.parse(stdin.readLineSync().toString());

      Cal c1 = Cal(hei:a,base:b,cal:c);
  }


}
// import 'dart:io';
// class Cal
// {
//   static const pi=3.14;
//   var ans;
//   Cal([var rad,var hei,var base])
//   {
//     if(rad!=0)
//     {
//       ans = pi*rad*rad;
//     }
//     else if(hei!=0 && base!=0)
//     {
//       ans = 0.5*hei*base;
//     }
//     print("Answer is $ans");
//   }
//   Cal.a([var rad,var hei,var base]){
//     var ans;
//     if(hei!=0 && base!=0)
//     {
//       ans = hei*base;
//     }
//     print("Answer is $ans");
//   }
// }
//
// void main()
// {
//
//   print("For area of circle press 1, For area of triangle press 2, For area of rectangle press 3");
//   var c = int.parse(stdin.readLineSync().toString());
//
//   switch(c)
//   {
//     case 1:
//       print("\n Enter Radius");
//       var r = int.parse(stdin.readLineSync().toString());
//       Cal c1 = Cal(r);
//
//     case 2:
//       var r=0;
//
//       print("\n Enter Value for a");
//       var a = int.parse(stdin.readLineSync().toString());
//
//       print("\n Enter Value for b");
//       var b = int.parse(stdin.readLineSync().toString());
//
//       Cal c1 = Cal(r,a,b);
//
//     case 3:
//       var r=0;
//       print("\n Enter Value for l");
//       var a = int.parse(stdin.readLineSync().toString());
//
//       print("\n Enter Value for w");
//       var b = int.parse(stdin.readLineSync().toString());
//
//       Cal c1 = Cal.a(r,a,b);
//   }
//
//
// }
