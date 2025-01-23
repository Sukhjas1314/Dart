//  Q.  Destination is given and accordingly calculate the shipping cost of item whose cost is given per kg

void main() {
  String destinationZone = 'PQR';
  double weight = 65.7;
  if(destinationZone == 'XYZ'){
    print('The shipping cost is \$${weight*5}');
  }
  else if(destinationZone == 'ABC'){
    print('The shipping cost is \$${weight*7}');
  }
  else if(destinationZone == 'PQR'){
    print('The shipping cost is \$${weight*10}');
  }
  else{
    print('Error');
  }
}
