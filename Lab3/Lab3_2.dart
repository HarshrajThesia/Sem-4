import 'dart:io';
void main(){
  stdout.write("Enter a No.");
  int n = int.parse(stdin.readLineSync()!);
  if(n==0 || n==1){
    print("ans = 1");
  }
  int ans = 1;
  for(int i=n; i!=0;i--){
    ans = ans*i;
  }
  print("ans is $ans");
}