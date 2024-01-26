
 void greeting(String name, int age, double height,String col){
  print("Merhaba,ben $name $age yasindayim boyum $age en sevdiğim renk $col");


 }
void main() {
  //Exercise 2 
  String name = "Yusuf";
  int age = 20;
  double height=176.3;
  String col="Mavi";
  bool isStudent= true;
  print("Name :$name");
  print("age :$age");
  print ("height:$height");
  print("isStudent:$isStudent"); 
//Exercise 3
int a =10;
int b =5;
int c =3;
int sum= a + b;
int diff= a - b;
double quotient = a / b;
int product = a * b;


print("result ${(diff*c) / sum *(a*b*c)}");







//Exercise 
int charge =33;
 if(charge==100){
  print("Telefon şarj edildi!!");
  }
 else if (charge<20 && charge >=10)
 { print("Telefonunuzu şarj edin");

 }
 else if(charge <10){
  print("Kritik batarya seviyesi!!");
  }


 else {
  print("telefon uzaydan geldi herhalde!?");}
//******************* */
//exercise 5
greeting(name, age, height, col);

}

