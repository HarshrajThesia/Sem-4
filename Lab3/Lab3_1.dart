import 'dart:io';
void main(){

  int n1 = int.parse(stdin.readLineSync()!);
  int n2 = int.parse(stdin.readLineSync()!);

  if(n2<n1){
    int temp = n1;
    n1 = n2;
    n2 = n1;
  }
  for(int i=n1;i<n2;i++){
    if(i%2==0 && i%3!=0){
      print(i);
    }
  }
}