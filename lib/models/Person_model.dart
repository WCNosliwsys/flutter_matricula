class Person{ 
  String name;
  String address;
  String phone;
  Person( {
    required this.name,
    required this.address, 
    required this.phone
    });
    
  @override
  String toString(){
    return "$name , $address y $phone";
  }
}