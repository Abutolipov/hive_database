import 'package:hive/hive.dart';

import '../models/user_model.dart';

class HiveDB{
  var box=Hive.box('third_dataBase');

Future<void> storeData(User user)async{
  var box = await  Hive.openBox('third_dataBase');
  box.put('user', user.toJson());
}

 Future<User> loadUser()async{
    var box = await  Hive.openBox('third_dataBase');
    var user=User.fromJson(box.get('user'));
    print(user.username);
    print(user.password);
    return user;
 }

  Future<void> removeUser()async{
    var box = await  Hive.openBox('third_dataBase');
    box.delete('user');
  }
}