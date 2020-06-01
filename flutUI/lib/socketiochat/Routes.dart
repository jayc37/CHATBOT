import 'package:flutUI/socketiochat/ChatUsersScreen.dart';
import 'package:flutUI/socketiochat/LoginScreen.dart';

import 'ChatScreen.dart';

class Routes{
  //
  static routes(){
    return {
      LoginScreen.ROUTE_ID: (context) => LoginScreen(),
      ChatUsersScreen.ROUTE_ID: (context) => ChatUsersScreen(),
      ChatScreen.ROUTE_ID: (context) => ChatScreen(),
    };
  }
  static initScreen (){
    return LoginScreen.ROUTE_ID;
  }
}