import 'package:flutUI/models/message_model.dart';
import 'package:flutUI/screens/cchatscreen.dart';
import 'package:flutUI/widgets/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';

class HomeePage extends StatefulWidget {
  @override
  _HomePageeState createState() => _HomePageeState();
}

// class TodoItem{
//   String usname;
//   bool done;
//   TodoItem({this.usname,this.done});
//   toJSONEncodable(){
//     Map<String,dynamic> m = new Map();
//     m['usname'] = usname;
//     m['done'] = done;
//     return m;
//   }
// }

// class TodoList{
//   List<TodoItem> items;

//   TodoList() {
//     items = new List();
//   }

//   toJSONEncodable() {
//     return items.map((item) {
//       return item.toJSONEncodable();
//     }).toList();
//   }
// }

class _HomePageeState extends State<HomeePage> {
    // final TodoList list = new TodoList();
    // final LocalStorage storage = new LocalStorage('user_name');
    bool initialized = false;
    TextEditingController controller = new TextEditingController();

    Map<String,bool> mp = new Map();

  //   _addItem(String usname) {
  //   setState(() {
  //     final item = new TodoItem(usname: usname, done: false);
  //     list.items.add(item);
  //     _saveToStorage();
  //   });
  // }
  //   _saveToStorage() {
  //   dynamic  x = storage.getItem('uname');
  //    print(x);
  //    storage.setItem('uname', list.toJSONEncodable());
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff21254A),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 200,
            child: Stack(
              children: <Widget>[
                Positioned(
                    child: FadeAnimation(
                  1,
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/theme.png"),
                      ),
                    ),
                  ),
                ))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FadeAnimation(
                  1,
                  Text(
                    "Wellcome",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                FadeAnimation(
                  1,
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.transparent,
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey[100],
                              ),
                            ),
                          ),
                          
                          child: TextField(
                            controller: controller,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "What your name?",
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                          onEditingComplete: _save,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20.0,
                                          ),
                                          FadeAnimation(
                                            1,
                                            Container(
                                              height: 50,
                                              margin: EdgeInsets.symmetric(horizontal: 60),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(50),
                                                color: Color.fromRGBO(49, 39, 79, 1),
                                              ),
                                              child: Center(                                                
                                                child: FlatButton(                                         
                                                    child: Text(
                                                  "Join",
                                                  style: TextStyle(color: Colors.white),
                                                ), 
                                               onPressed: () {  
                                              messages.add("hello" + controller.value.text); 
                                               Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => ChatScreen(  
                                                  user: controller.value.text,                            
                                                ))
                                              );
                                              _save();}
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }       
  void _save() {
    // _addItem(controller.value.text);
        // controller.clear();
  }
}
