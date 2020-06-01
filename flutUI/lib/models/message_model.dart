import 'package:flutUI/models/user_model.dart';

class Message {
    final User sender;
  final String text;

  Message({
    this.sender,
    this.text,
  });
}

List<String> messages = new List<String>();
final User currentUser = new User(
);
List<String> response = new List<String>();
// USERS
final User bot = User(
  name: 'chatbot',
);