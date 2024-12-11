import 'dart:io';

void main(){
  Map<String ,Object> mapp={
    "sagar":Frieds(age: "12",gmail: "sagar@gamil.com"),
    "nnn":Frieds(gmail: "nnn@gamil.com",age: "34")
  };

  String s1=stdin.readLineSync()!;
  if(mapp.containsKey(s1)){
    Frieds f1=mapp[s1] as Frieds;
    print(f1.gmail);
    print(f1.age);
  }
}
class Friends{
  String? age;
  String? gmail;

  Friends({required String age,required String gmail}){
    this.age=age;
    this.gmail = this.gmail=gmail;
  }
}