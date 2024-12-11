import 'dart:io';
import 'dart:core';

void main(){
  List<dynamic> list1 = [];
  List<dynamic> list2 = [];


  for(int i=0;i<5;i++){
    stdout.write("Enter no. $i");
    list1.add((stdin.readLineSync()!));
  }

  for(int i=0;i<5;i++){
    stdout.write("Enter no. $i");
    list2.add((stdin.readLineSync()!));
  }

  for(int i=0;i<5;i++){
    for(int j = 0;j < 5;j++){
      if(list1[i] == list2[j]){
        stdout.write(list1[i]);
      }
    }
  }
}