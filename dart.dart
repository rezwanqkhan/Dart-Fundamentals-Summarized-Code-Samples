
/*void greet(String name){
  
  print('hello $name');
  
}


void main(){
  
  greet('Agela lu');
}*/

void main(){
  
  greet(Greeting: 'how do you do', personTogreet: 'jakie');
}
void greet({ personTogreet,  Greeting}){
  
  print('$Greeting $personTogreet');
}


  *******************************************************************************************

challange in the class

// challeng: without changing the manin function, can you make this code 
// work and get resoult printed in console?

void main(){
  int step1Resout = add(n1: 5, n2: 9);
  int step2Resoult = multiplaying(step1Resout, 5);
  double finalResoult = step2Resoult/3;
  
  print(finalResoult);
}

int add({ n1,  n2}){
  return n1+n2;
  
}

int multiplaying(int a , int b){
  return a * b;
  
  
  *******************************************************************************************
  
  
  void main(){
    
    int result = add();
    print(result);
    
    
  }
  
    // we use => this for just one line codes 
    
  //   int add(){ its same to              int add()=> 4+5;
  
  //   return 4+5;
    
  // }
  
int add()=> 4+5;
  
  *******************************************************************************************  
  //list in dart langues
  
  
  
  void main(){
    List<String> myList=[
      'nabi',
      'arash',
      'yama',
      'wajid',
      'rafi',
    ];
    
    
    print(myList[1]);
    print(myList.indexOf('wajid'));
    print(myList.reversed);
    myList.add('Nabil');// at the end of the list it will be added nabil
    print(myList);
    
   myList.insert(3, 'qahar');// istead of wajid it insert qahar
    print(myList);
  }
    *******************************************************************************************
   //inheritance in dart
   
   
    void main(){
      
    Car myCar= Car();
     print( myCar.numberOfSeat=10);
      myCar.drive();
      
      ElectricalCar myTesla =  ElectricalCar();
     print( myTesla.numberOfSeat=5);
      myTesla.drive();
      
     
      }
    class Car{
      
      int numberOfSeat=5;
      
      void drive(){
        print('Car is going ont the way');
      }
    }
    
    class ElectricalCar extends Car{
      
      
}


*******************************************************************************************

//Polymorphism in dart

void main(){
  Car fromCar= Car();
  fromCar.Drive();
  
  elctricCar Electric = elctricCar('1 hourr');
  Electric.Drive();
  
  
  
  

}

class Car{
  
  void Drive(){
    print('From Car class ');
    
    
  }
}

class elctricCar extends Car{
  
  String destination ='';
  
  // in this cless we arer able to use parent Driv metot by using super and our speicial construction detinatin  and this is the polymorphyism 
  elctricCar(String dis){
    destination = dis;
  }
  
  @override 
  void Drive(){
    super.Drive();
    
    
    print('Electric Car is runned $destination');
  }
}


*******************************************************************************************



// constructer in dart


void main(){
  
  Human jam = Human( 70, 77);
  print(jam.height);
  
  
}

class Human{
  double height=5;
  double weight=5;
  
  Human( this.height, this.weight);
  
 // this two code is same with together 
  
//   Human({ height,  weight}){
//     this.height = height;
//     this.weight=weight;
//   }
}


*******************************************************************************************


//Maps in dartt

void main() {
 //maps in dart 
  //Maps! Key / value paire
  var toppings = {"john": "pepperoni", "mary": "cheese"};
  print(toppings);
  print(toppings["john"]);
  // Sjow values 
  print(toppings.values);
  // show keys 
  print(toppings.keys);
  //show length
  print(toppings.length);
  // add somthings 
  toppings["erfan"] = "sasuage";
  print(toppings);
  //add many things
  toppings.addAll({"wafi": "spagaty", "ahmet": "menemant"});
  print(toppings);
  // remove somthings
  toppings.remove("john");
  print(toppings);
  //remove everything
  toppings.clear();
  print(toppings)
;  
}
//Map 2

Map<String, int> NumberBook ={
  
 "Ahmad": 123345,
  "naim": 9876767,
  "rafi": 0987654,
  "Adib": 9343449,
};


void main(){
  print(NumberBook["Ahmad"]);
  // output is 12345
}
*******************************************************************************************
//Loops in dart 

void main() {
 // For loop
  var num = 5;
  for(var i =num; i>=1; i--){
    print(i);
  }
  // for in loop
  var names = ["john", "tina","steve"];
  for(var name in names ){
    print(name);
   // print(names.first);
   // print(names.last);
    
  }
  //wile loops in dart 
  while(num>=1){
   print(num);
    num--;
  }
  
}





*******************************************************************************************

void main(){
  // if somthing is not changeble we use const
  const int Mycondst = 3;
 // if somthing is changelble we use final
  final  Myfinal = DateTime.now();
  print(Myfinal);
  
  
}




*******************************************************************************************

//enums in dart 



void main(){
  Car slelectedCar = Car(cart: CarType.corola);
  
  print(slelectedCar);
  
}


class Car{
  CarType cart;
  
  Car({required  this.cart});
  
}

enum CarType{
  corola,
  bmw,
  mercedes,
}


*******************************************************************************************

// dart ternary operator 

void main(){
  bool juck=true;
  
//   if(juck == true){
//     print('juck is good boy');
//   }else{
//     print('ohh no!');
//   }
 // its same whit above code 
  juck == true ? print('juck is good boy'): print('ohh no!');
  
  // we c\nt do this statment in if else conditions
  int age = 20;
  
  bool CanBuyAlcohol = age >24 ? true: false;
  print(CanBuyAlcohol);
}


*******************************************************************************************

//function 2 part 

void main(){
  int result = Collection(3 ,4, mutiplying);
  print(result);
}

int add(n1,n2){
  return n1 +n2;
}

int mutiplying(n1,n2){
  return n1*n2;
}

int Collection(n1,n2, Function collection){
  return collection(n1,n2);}


*******************************************************************************************

//function 2.2 part 

void main(){
  Car Mycar = Car(Drive : FastDrive);
  Mycar.Drive();
}

class Car{
  Car({ required this.Drive});
  Function Drive;
}

void FastDrive(){
  print("Car is so fast" );
}

void SloCar(){
  print("Car is going so slo");
}

*******************************************************************************************
// for in loops


List<int> WinningNumbers =[12,6,34,22,41,9];

void main(){
  List<int> Ticket1 = [45,2,9,18,12,33];
  List<int> Ticket2 = [41,17,26,32,7,35];
  
  checkNumbers(Ticket2);
  }




void checkNumbers(List<int> mynumbers){
    int counter=0;
  for(int winningnumbers in WinningNumbers){
    for(int mynum in mynumbers){
       if (  winningnumbers == mynum){
        counter++;
    }    
    }
   
  }
  print("the muching numbers equal to $counter");
}




*******************************************************************************************

// Using of the mixin in dart 

void main() {
  
  
  duck().fly();
  duck().swim();
 
}


class animal{
  
  void move(){
    print('the postion changed');
  }
}


class bird extends animal{
  @override
  void move(){
    super.move();
    print('by flying');
  }
  
}

class fish extends animal{
  
   @override
  void move(){
    super.move();
    print('by swimming');
  }
}


mixin Canswim{
  void swim(){
    print('changing position by swimming');
  }
}

mixin Canfly{
  void fly(){
    print('changing position by flying');
  }
}

// we can use the Canfly and Canswim and more mixin classes if exist 
class duck  with Canfly, Canswim{
  
}
