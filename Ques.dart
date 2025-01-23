//  Q1.  Destination is given and accordingly calculate the shipping cost of item whose cost is given per kg

void main() {
  String destinationZone = 'PQR';
  double weight = 65.7;

  //  With if-else
  if(destinationZone == 'XYZ'){
    print('Shipping cost : \$${weight*5}');
  }
  else if(destinationZone == 'ABC'){
    print('Shipping cost : \$${weight*7}');
  }
  else if(destinationZone == 'PQR'){
    print('Shipping cost : \$${weight*10}');
  }
  else{
    print('Error');
    return;
  }



  //  With Switch statement 
  switch(destinationZone){
    case 'XYZ' :
      print('Shipping cost : \$${weight*5}');
    case 'ABC' :
      print('Shipping cost : \$${weight*7}');
    case 'PQR' :
      print('Shipping cost : \$${weight*10}');
    default :
      print('Error');
  }
}
