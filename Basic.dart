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
}
