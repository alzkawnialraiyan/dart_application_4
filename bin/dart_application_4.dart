
import 'dart:io';

void main(){
  Map laptops1 = {"name":"HP","Price":300,"HardDisk":"32GB","RAM":"16GB"};
  Map laptops2 = {"name":"Lenovo","Price":400,"HardDisk":"16GB","RAM":"32GB"};
  Map laptops3 = {"name":"MacBook","Price":700,"HardDisk":"16GB","RAM":"8GB"};
  Map laptops4 = {"name":"Dell","Price":500,"HardDisk":"32GB","RAM":"32GB"};

  List <Map> devices = [laptops1,laptops2,laptops3,laptops4];

  for (var element in devices) {
    print("Brand: ${element["name"]}");
    // print("Price: ${element["Price"]}");
    print("HardDisk: ${element["HardDisk"]}");
    print("RAM: ${element["RAM"]}");
    // print("\n");
  }
  print("Enter your budget");
  double? budget = double.tryParse(stdin.readLineSync()?? '');

  if (budget == devices[0]["Price"]) {
    print(devices[0]["name"]);
  } 
  else  if (budget! > devices[0]["Price"] && budget <= devices[1]["Price"]){
    print(devices[1]["name"]);
  } else if (budget > devices[1]["Price"] && budget <= devices[2]["Price"]){
    print(devices[2]["name"]);
  } 
}