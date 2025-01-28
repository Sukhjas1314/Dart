void main() {
  // To get output
  print('Hi everyone');


  
  // string property
  String value = '3564d5';
  print(value.length);


  
  //using shortcuts for operations using operators
  int first = 20;
  print(first);
  
  first += 75;
  print(first);
  
  first -= 75;
  print(first);


  
  // String manipulation/updation
  String greeting = 'Hello World';
  print(greeting);
  
  greeting = greeting + ' YOOO';
  print(greeting);
                
  greeting = '$greeting ,YOO';            // use string interpolation
  print(greeting);

  greeting = '${greeting.length} , YOO';        // Brackets to be used in string interpolation only when property is also defined with the variable
  print(greeting);

  greeting = '\$23';                  // To prine $ in console or screen '\$--' is used
  print(greeting);
  
  greeting = '''Hello world ,          
  how are you''';                        // For multiline code ''' - - - ''' is used
  print(greeting);
  
  greeting = 'Why are you so happy\nwhy???';                  // '\n' is used as enter/move to next line
  print(greeting);


  
  // var/final/const variableName = value
  var first = '32';                    // mutable variable
  const second = '7364';               // immutable compile time variable
  final third = 387;                   // immutable runtime variable
  
  print(first);
  print(second);
  print(third);
  
  print('----------');
  first = '63';
  
  print(first);
  print(second);
  print(third);


  
  // final is runtime variable 
  final someValue = DateTime.now();        // Determines and store the current date and time
  print(someValue);



  // optional variable /null variable
  // string/int/bool and null
  String? someValue2 = null;               // For nullable variable use ? after the variable type
  int? some = null;

  print(someValue2);
  print(some);

  String? someValue;
  print(someValue);
  
  print(someValue?.length??0);              // For Users to see something other than null like 0


    
  // If statements
  int age = 18;
  if(age > 18){                              // Use of '>'
    print('Adult');
  }
  else if(age == 18){                          // Use of '=='
    print('You just became an adult');
  }
  else{
    print('Child');
  }



  int age1 = 32;
  bool isadult = false;
  if(age1 != 18 && !isadult){                  // Use of '&&' , '!=' & '!'
    print('Haha');
  }
  else if(age1 <= 15 || age1 >= 12){            // Use of '>=' & '<=' 
    print('Hana');
  }
  else{
    print('Naha');
  }



  // Ternary operator
  String value1 = 'Hi';
  String value2 =  value1.startsWith('H') ? 'Wow' : 'Nope';            // '.startsWith' is a property of strings 
  print(value2);



  // Switch statement
  String traffic = 'green';
  switch(traffic){
    case 'red' :
      print('Stop!!');
    case 'yellow' :
      print('Ready!!');
    case 'green' :
      print('Go');
    default :
      print('Invalid signal');
  }



  // Loops
  //For Loops
  for(int i = 0 ; i <= 10 ; i++){
    print(hi.substring(i,13));
    print('Hello world - $i');
  }


  String hi = 'Hello World!!';
  for(int i = 0 ; i < hi.length ; i++){
    print(hi[i]);
  }

  // while loop
  String hi1 = 'Hello World';
  int i = 0;
  while(i < hi1.length){
    print(hi1[i]);
    i++;
  }


  // do while loop
  String hi2 = 'Hello World!';
  int i = 0;
  do{
    print(hi2[i]);
    i++;
  }while(i < hi2.length);



  // Continue statement
  String hi3 = 'Hello World!!';
  for(int i = 0 ; i < hi3.length ; i++){
    if(i % 2 == 0){
      continue;
    }
    print(hi3[i]);
  }
}

  // functions
void printName(){
  print('Sukhman');
}


int value(){
    return 471;
}


(int,String,int,bool,String) print1(){
  return (13,'Sukhman',10,true,'Singh');
}


String? isAdult1(){                       // for a nullified function
  return null;
}


void function(String name){               // function with a parameter as an argument
  print(name);
}


void main() {
  printName();
  printName();
  printName();
  print('\n');

  
  print(value());
  print('\n');

  
  // var data = print1();
  // or
  var (dob,name,yr,isAdult,surname) = print1();
  // print(data);
  print('\n');
  // print(data.$1);
  // print(data.$2);
  // print(data.$3);
  // print(data.$4);
  // print(data.$5);
  print(dob);
  print(name);
  print(isAdult);
  print(yr);
  print(surname);

  
  print('\n');
  print(isAdult1());


  print('\n');
  function('Sukhman');
}



// Use of required keyword
void printName(int age,bool isAdult,{required String firstName,required String lastName}){
  print(firstName);
  print(lastName);
  print(age);
  print(isAdult);
}
void main(){
  printName(20,true,lastName : 'Singh',firstName : 'Sukhmanpreet');
}



// Use of multi datatyped function with arguments
({int age,String name}) fun(){
  return (age : 20,name : 'Sukhman');
}
void main(){
  final fun1 = fun();
  print(fun1.age);
  print(fun1.name);
}



// Arrow function
void name() => print('Sukhman');
void main(){
  name();
}



// Classes
class Cookie{
  String shape = 'Circle';
  double size = 15.4;   //cm
  
  void baking(){
    print('Baking has started');
  }
  bool isCooling(){
    return false;
  }
}
void main() {
  // print('The shape of the cookie : ${Cookie().shape}');
  // print('${Cookie().size} cm');
  // Cookie().baking();
  // print(Cookie().isCooling());

  // or

  Cookie c1 = Cookie();
  print('The shape of the cookie : ${c1.shape}');
  print('${c1.size} cm');
  c1.baking();
  print(c1.isCooling());
}


class Cookie{
  String shape;
  double size; //cm
  Cookie(this.shape,this.size){
     print('Cookie Constructor is called');
     baking();
  }
  void baking(){
    print('Baking has started');
  }
  bool isCooling(){
    return false;
  }
}

void main() {
  Cookie c1 = new Cookie('Rect',20.5);
  
  print('The shape of the cookie : ${c1.shape}');
  print('${c1.size} cm');
}



class Rectangle{
  // private variables
  double _height = 4;
  double _width = 5;
  Rectangle(double height,double width){
    this._height = height;
    this._width = width;
    calculatePerimeter();
  }
  
  // method
  void calculatePerimeter(){
    var p = 2*(_height + _width);
    print('The perimeter : ${p}');
  }
}

void main(){
  Rectangle(34.5,2.5);
}



class Rectangle{
  final String shape;
  final double size;
  // private variables
  double _height = 4;
  double _width = 5;
  
  Rectangle({required this.shape,required this.size}){
    baking();
  }
  
  // getter function
  double get height => _height;

  // setter function
  set setHeight(double h){
    _height = h;
  }
  // method
  void baking(){
    print('Your order of ${size}cm of ${shape} cookie is being prepared');
  }
}

void main(){
  final r1 = Rectangle(shape : 'Hello',size : 2.5);
  print(r1.height);
  r1.setHeight = 54;
  print(r1.height);
}



class Constants{
  Constants(){
    print('This is the constructor');
  }
  // static variables
  static String greeting = 'Hi,Ho are you?';
  static String bye = 'Bye,See you soon!';
  
  // static function
  static int giveSomeValue(){
    return 10;
  }
}
void main(){
  print(Constants.greeting);
  print(Constants.bye);
  print(Constants.giveSomeValue());
}



// Inheritance (Oops)
class Vehicle{
  int speed = 10;
  bool isEngineWorking = false;
  bool isLightOn = true;
  
  void accelerate(){
    speed += 10;
  }
}

class Car extends Vehicle{
  int noOfWheels = 4;
  
  void printSomething(){
    print(noOfWheels);
  }
}

class Truck extends Vehicle{
  int noOfWheels = 8;
  
  void print1(){
    print(noOfWheels);
  }
}
void main(){
  Vehicle car = Car();              // If Instead of Car we use Vehicle it will give error only in the properties which are not from the vehicle class
  print((car as Car).noOfWheels);           // to solve this '(objectName as DerivedClass).propertyname' will work
  print(car.isEngineWorking);
  
  Truck truck = Truck();
  print(truck.noOfWheels);
  print(truck.isEngineWorking);
}


// use of override
class SomeClass{
  int speed = 10;
  
  void accelerate(){
    speed += 30;
  }
}

class Vehicle extends SomeClass{
  bool isEngineWorking = false;
  bool isLightOn = true;
  
  @override
  void accelerate(){
    speed += 60;
  }
}

class Car extends Vehicle{
  int noOfWheels = 4;
  
  void printSomething(){
    print(noOfWheels);
  }
}

class Truck extends Vehicle{
  int noOfWheels = 8;
  
  void print1(){
    print(noOfWheels);
  }
}

void main(){
  final car = Car();
  car.accelerate(); 
  print(car.speed);
}


// Use of implement & extends
class SomeClass{
  bool isEngineWorking = false;
  bool isLightOn = true;
  int noOfWheels = 4;
}

class Vehicle{
  void accelerate(){
    print('Accelerating vehicle');
  }
}

class Car extends SomeClass implements Vehicle{
  @override
  void accelerate(){
    print('Accelerating vehicle');
  }
  void printSomething(){
    print(isEngineWorking);
    print(isLightOn);
    print(noOfWheels);
  }
}

void main(){
  final car = Car();
  car.accelerate(); 
  car.printSomething();
}

// Abstract class
abstract class Vehicle{
  void accelerate();
}

class Car implements Vehicle{
  @override
  void accelerate(){
    print('Accelerating vehicle');
  }
}

void main(){
  final car = Car();
  car.accelerate(); 
}



// Polymorphism (many forms) 
class Animal{
  void sound(){
    print('Animal makes sound'); 
  }
}

class Cat extends Animal{
  @override
  void sound(){
    print('Cat makes sound'); 
  }
}

class Dog extends Animal{
  @override
  void sound(){
    print('Dog makes sound'); 
  }
}

void main() {
  Animal cat = Cat();
  cat.sound();
  cat = Dog();
  cat.sound();
}



// Abstraction (Hidding details and showing only essential ones and using abstract classes)
abstract class Animal{
  void sound();
}

class Cat extends Animal{
  @override
  void sound(){
    print('Cat makes sound'); 
  }
}

class Dog extends Animal{
  @override
  void sound(){
    print('Dog makes sound'); 
  }
}

void main() {
  Animal animal1 = Cat();
  animal1.sound();
  Animal animal2 = Dog();
  animal2.sound();
}



// Mixins
mixin Jump{
  int jumping = 10;
  
}

mixin Scream{
  bool isScreaming = false;
}

class Animal with Jump,Scream{
  void fn(){
    print(jumping);
    print(isScreaming);
  }
}

void main(){
  final anim = Animal();
  anim.fn();
}



// Class Modifiers
sealed class Animal{}                // sealed is used instead of abstract

class Human extends Animal{}

class Dog extends Animal{}

class Cat extends Animal{}

void main(){
  Animal animal = Human();
  switch(animal){
    case Dog() :
      print('Dog');
    case Human():
      print('Human');
    case Cat():
      print('Cat');
  }
}

// Generally used
sealed class Animal{}
final class Animal1{}
base class Animal2{}
interface class Animal3{}
mixin class Animal4{}



// List
void main(){
  // List
  // [10,20,30,40,50,60,70,80,90]
  
  List list = [10,20,30,40,50,60,70,80,90];              // List is an abstract class used to store and manipulate lists
  print(list);
  print('\n');
  print(list[0]);
  print(list[2]);
  print(list[8]);
  print(list[6]);
}      


void main(){
  List list = [10,20,30,40,'Hello',false];            // By default the values can be of dynamic datatype
  print(list);
  print('\n');
  print(list[0]);
  print(list[4]);
}


// Using class in list
class Student{
  final String name;
  
  Student(this.name);
}

void main(){
  List students = [
    Student('Sukhman'),
    Student('Daksh'),
    Student('Harith'),
    Student('Arsh'),
    Student('Eshaan')
  ];
    
  final student = students[0];
  if(student is Student){
    print(student.name);
  }
  else{
    print(student);
  }
}


// Insertions/Updation
class Student{
  final String name;
  
  Student(this.name);
  
  @override
  String toString() => 'Student : ${name}';
}
void main(){
  List<Student> students = [
    Student('Sukhman'),
    Student('Daksh'),
    Student('Harith'),
    Student('Arsh'),
    Student('Eshaan')
  ];
  print(students);
  
  students[4] = Student('Swayam');    // Helps to update the value
  print(students);
  
  students.add(Student('Eshaan'));    // To add at the end
  print(students);
  
  students.insert(3,Student('Yash'));   // To insert at any index
  print(students);
}
















































