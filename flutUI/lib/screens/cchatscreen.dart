import 'package:flutUI/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutUI/models/message_model.dart';
import 'package:localstorage/localstorage.dart';

class ChatScreen extends StatefulWidget {
  String user;
  ChatScreen({this.user});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}
// class MessageItem{
//   String message;
//   bool done;
//   MessageItem({this.message,this.done});
//   toJSONEncodable(){
//     Map<String,dynamic> mp = new Map();
//     mp['message'] = message;
//     mp['done'] = done;
//     return mp;
//   }
// }

// class MessageList{
//   List<MessageItem> messages;

//   MessageList() {
//     messages = new List();
//   }

//   toJSONEncodable() {
//     return messages.map((message) {
//       return message.toJSONEncodable();
//     }).toList();
//   }
// }
class _ChatScreenState extends State<ChatScreen> {
    // final MessageList list = new MessageList();
    final LocalStorage storage = new LocalStorage('get_message');
      bool initialized = false;
      TextEditingController controller = new TextEditingController();

  
  //   _addItem(String message) {
  //   setState(() {
  //     final item = new MessageItem(message: message, done: false);
  //     list.messages.add(item);
  //     _saveToStorage();
  //   });
  // }
  //   _saveToStorage() {
  //    storage.setItem('mess', list.toJSONEncodable());
  // }
  _buildMessage(String mes, bool isMe) {
    final Container msg = Container(
      margin: isMe
          ? EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              left: 80.0,
            )
          : EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
            ),
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
        color: isMe ? Theme.of(context).accentColor : Color(0xFFFFEFEE),
        borderRadius: isMe
            ? BorderRadius.only(
                topLeft: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
              )
            : BorderRadius.only(
                topRight: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Text(
          //   time,
          //   style: TextStyle(
          //     color: Colors.blueGrey,
          //     fontSize: 16.0,
          //     fontWeight: FontWeight.w600,
          //   ),
          // ),
          // SizedBox(height: 8.0),
          Text(
            mes,
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
    if (isMe) {

      return msg;
    }
    return Row(
      children: <Widget>[
        IconButton(
          icon: new Image.asset("assets/images/iconchat.jpg"),
          iconSize: 45.0,
          onPressed: () {}, //chatbot profile
        ),
        msg,
      ],
    );
  }

  _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.photo),
            iconSize: 25.0,
            color: Color(0xff21254A),
            onPressed: () {},
          ),
          Expanded(
            child: TextField(
              controller: controller,
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value) {},
              decoration: InputDecoration.collapsed(
                hintText: 'Send a message...',
              ),
              // onEditingComplete: _save,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.send),
                          iconSize: 25.0,
                          color: Color(0xff21254A),
                          onPressed: (){_sendMyMessage();},
            ),
          ],
        ),
      );
    }

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Color(0xff21254A),
    appBar: AppBar(
    backgroundColor: Color(0xff21254A),
      title: Text(
        "Chatbot",
        style: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      elevation: 0.0,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.more_horiz),
          iconSize: 30.0,
          color: Color(0xff21254A),
          onPressed: () {},
        ),
      ],
    ),
    body: GestureDetector(
      
      onTap: () => FocusScope.of(context).unfocus(),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: ListView.builder(
                  reverse: true,
                  padding: EdgeInsets.only(top: 15.0),
                  itemCount: messages.length,
                  itemBuilder: (BuildContext context, int index) {
                    final String mes = messages[index];
                    final bool isMe = _isMe();
                                        return _buildMessage(mes, isMe);
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              _buildMessageComposer(),
                            ],
                          ),
                        ),
                      );
                    }
                      
                    // void _save() {
                    //     _addItem(controller.value.text);
                    //     controller.clear();
                    // }
                                                                                              
                    void _sendMyMessage() {
                      if (controller.text.isNotEmpty) {
                        messages.add(controller.value.text);
                        controller.clear();
                        }
                      }
                    
                      bool _isMe() {
                        
                      }
}
