import 'dart:io';
void count(List<int> n){
  int even=0;
  int odd=0;
  for(int i=0;i<n.length;i++){
    if(n[i]%2==0){
      even++;
    }
    else{
      odd++;
    }
  }
  print("Number of odd No. is $odd");
  print("Number of even No. is $even");
}
void main(){
  List<int> listint = [];
  for(int i=0;i<5;i++){
    stdout.write("Enter a No. at $i :");
    listint.add(int.parse(stdin.readLineSync()!));
  }
  count(listint);
}