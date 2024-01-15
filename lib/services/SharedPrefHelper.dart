  
import 'package:shared_preferences/shared_preferences.dart';

enum Prederence_key {UserName, UserMail}

class SharedPrefHelper {

 static void SetUserName(String email){

}
 static Future<String> GetUserName() async{


return "";
}

  static Future <String?> GetUserMail() async{
return (await
SharedPreferences.getInstance()).getString(Prederence_key.UserMail.toString());
}

  static Future<bool?> SetUserMail( String mail) async{
return (await
SharedPreferences.getInstance()).setString(Prederence_key.UserMail.toString(), mail);
}


}