import 'dart:io';
void check(int n){
  int count = 0;
  for(int i=0;i<=n;i++){
    if(i%n==0){
      count++;
    }
  }
  if(count==2){
    print('1');
  }
  else{
    print('0');
  }
}

void main(){
  stdout.write("Enter No.");
  int n = int.parse(stdin.readLineSync()!);
  check(n);
}