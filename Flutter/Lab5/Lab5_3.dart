

void main(){
  List<dynamic> cities = ['Mumbai','Rajkot','Ahmedabad','Banglore','Delhi'];
  for(int i=0;i<cities.length;i++){
    if(cities[i] == 'Ahmedabad'){
      cities[i] = 'Surat';
    }
  }
  print(cities);
}