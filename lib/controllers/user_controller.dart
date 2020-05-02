import 'package:taxi_app/models/user.dart';

class UserController {
  static User getUser() {
    return User(
        name: "DIGIT Pakistan",
        mobileNumber: "+921234567890",
        photoUrl:
            "https://avatars0.githubusercontent.com/u/32742621?s=460&u=c6c403e3d7975bca9037778747b14511ea19af34&v=4");
  }
}
