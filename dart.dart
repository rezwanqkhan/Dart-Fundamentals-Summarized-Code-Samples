
/*void greet(String name){
  
  print('hello $name');
  
}


void main(){
  
  greet('john root');
}*/

void main(){
  
  greet(Greeting: 'how do you do', personTogreet: 'jakie');
}
void greet({ personTogreet,  Greeting}){
  
  print('$Greeting $personTogreet');
}


 # *******************************************************************************************

# challange in the class

// challenge: without changing the main function, can you make this code 
// work and get result printed in console?

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
  
  
  #*******************************************************************************************
  
  
  void main(){
    
    int result = add();
    print(result);
    
    
  }
  
    // we use => this for just one line codes 
    
  //   int add(){ its same to              int add()=> 4+5;
  
  //   return 4+5;
    
  // }
  
int add()=> 4+5;
  
#  *******************************************************************************************  
  # list in dart language 
  
  
  
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
    
   myList.insert(3, 'qahar');// instead of wajid it insert qahar
    print(myList);
  }
   # *******************************************************************************************
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


#*******************************************************************************************

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
  
  //In this class we can use the parent Driv method by using super and our special construction destination  and this is the polymorphism. 
  elctricCar(String dis){
    destination = dis;
  }
  
  @override 
  void Drive(){
    super.Drive();
    
    
    print('Electric Car is runned $destination');
  }
}


#*******************************************************************************************

// constructer in dart

void main(){
  
  Human jam = Human( 70, 77);
  print(jam.height);
   
}

class Human{
  double height=5;
  double weight=5;
  
  Human( this.height, this.weight);
  
 //these two codes are the same together 
  
//   Human({ height,  weight}){
//     this.height = height;
//     this.weight=weight;
//   }
}


#*******************************************************************************************


//Maps in Dartt  like a dictionary in Python

void main() {
 //maps in dart 
  //Maps! Key/value pairs
  var toppings = {"john": "pepperoni", "mary": "cheese"};
  print(toppings);
  print(toppings["john"]);
  // Sjow values 
  print(toppings.values);
  // show keys 
  print(toppings.keys);
  //show length
  print(toppings.length);
  // add somethings 
  toppings["erfan"] = "sasuage";
  print(toppings);
  //add many things
  toppings.addAll({"wafi": "spagaty", "ahmet": "menemant"});
  print(toppings);
  // remove some things
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
#*******************************************************************************************
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
  //while loops in dart 
  while(num>=1){
   print(num);
    num--;
  }
  
}





#*******************************************************************************************

// Using 'const' for values that are known at compile time and cannot change during runtime.
const int MyConst = 3;

// Using 'final' for variables whose values are set once and cannot be changed after that.
// Here, DateTime.now() is evaluated once at runtime and its value is assigned to MyFinal,
// which cannot be changed thereafter.
final MyFinal = DateTime.now();

void main() {
  print(MyConst); // Prints the constant value 3
  print(MyFinal); // Prints the current date and time, evaluated at the time of initialization
}





#*******************************************************************************************

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


#*******************************************************************************************

// dart ternary operator 

void main(){
  bool juck=true;
  
//   if(juck == true){
//     print('juck is good boy');
//   }else{
//     print('ohh no!');
//   }
 //It is the same whit the above code 
  juck == true ? print('junk is good boy'): print('ohh no!');
  
  //We can't do this statement in if else conditions
  int age = 20;
  
  bool CanBuyAlcohol = age >24 ? true: false;
  print(CanBuyAlcohol);
}


#*******************************************************************************************

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


#*******************************************************************************************

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

#*******************************************************************************************
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




#*******************************************************************************************

// Using of the mixin in dart 

void main() {
  
  
  duck().fly();
  duck().swim();
 
}


class animal{
  
  void move(){
    print('the position changed');
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
