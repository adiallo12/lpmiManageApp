import 'package:shared_preferences/shared_preferences.dart';


enum PREFERENCE_KEY{name, mail}


class SharedPrefHelper{
    static Future<String?> getUserName() async {
        return (await
        SharedPreferences.getInstance()).getString(PREFERENCE_KEY.name.toString());
    }
    static Future<bool?> setUsername(String
    userName) async{
        return (await
        SharedPreferences.getInstance()).setString(PREFERENCE_KEY.name.toString(), userName);
    }

    static Future<String?> getUserMail() async {
        return (await
        SharedPreferences.getInstance()).getString(PREFERENCE_KEY.mail.toString());
    }

    static Future<bool?> setUserMail(String userMail) async{
        return(await
        SharedPreferences.getInstance()).setString(PREFERENCE_KEY.mail.toString(), userMail);
    }
}