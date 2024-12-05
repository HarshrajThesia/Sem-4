import 'dart:io';
void main(){
  stdout.write("Enter a No.");
  int n = int.parse(stdin.readLineSync()!);
  int count = 0;
  for(int i=0;i<n;i++){
    if(i%n==0){
      count++;
    }
  }
  if(count==2){
    print("Prime");
  }
  else{
    print("Not Prime");
  }
}