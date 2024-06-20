
class LoginModel {
  // final dynamic image;
  // final String name;
  final String email;
  final String password;
  //final String address;
  //final String gender;
  //final DateFormat birthdate;
  //final DateTime datejoined;
  LoginModel({
    // required this.image,
    // required this.name,
    required this.email,
    required this.password,
    //required this.address,
    // required this.gender,
    // required this.birthdate,
    // required this.datejoined,
  });
  factory LoginModel.fromJson(jsonData) {
    return LoginModel(
        email: jsonData['email']?? "",
        //name: jsonData['name'],
        //image: jsonData['image'],
        password: jsonData['password']?? "",
        //gender: jsonData['gender'],
        //birthdate: jsonData['birthdate'],
        //address: jsonData['address'], //datejoined: jsonData['date_joined'], );
    );
  }
}