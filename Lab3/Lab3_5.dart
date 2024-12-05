import 'dart:io';
void main(){
  List<int> l1 = [];
  int? a;
  int sump=0;
  int sumn=0;

  while(a!=0) {
    a = int.parse(stdin.readLineSync()!);
    l1.add(a);

    if (a > 0 && a % 2 == 0) {
      sump = a + sump;
    }

    else if (a < 0 && a % 2 != 0) {
      sumn = sumn + a;
    }
  }
  print("Sum of even positive No. is :$sump");
  print("Sum of odd negative No. is :$sumn");
}