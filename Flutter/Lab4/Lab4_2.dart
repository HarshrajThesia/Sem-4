import 'dart:io';
void maxValue(int a, {required b}){
  if(a>b){
    print("Max is $a");
  }
  else{
    print("Max is $b");
  }
}
void main(){
  int ?a;
  stdout.write("Enter a No.");
  a = int.parse(stdin.readLineSync()!);
  stdout.write("Enter a No.");
  b = int.parse(stdin.readLineSync()!);
}