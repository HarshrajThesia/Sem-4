import 'dart:io';
import 'dart:core';
void main(){
    List<int> listint = [];
    for(int i=0;i<5;i++){
      stdout.write("Enter no. $i");
      listint.add(int.parse(stdin.readLineSync()!));
    }
    listint.sort();
    print(listint);
}