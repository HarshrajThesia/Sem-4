import 'dart:io';
void simpleInterest(int p,int r,int t){
  double si = (p*r*t)/100;
  print("Simple interest is $si");
}
void main(){
  stdout.write("Enter principle : ");
  int p = int.parse(stdin.readLineSync()!);
  stdout.write("Enter rate of interest");
  int r = int.parse(stdin.readLineSync()!);
  stdout.write("Enter time period");
  int t = int.parse(stdin.readLineSync()!);
  simpleInterest(p, r, t);
}