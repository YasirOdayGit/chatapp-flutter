import 'package:chattingapp/_config/_colors.dart';
import 'package:flutter/material.dart';

class SingleChatPage extends StatefulWidget {
  const SingleChatPage({Key? key}) : super(key: key);

  @override
  State<SingleChatPage> createState() => _SingleChatPageState();
}

class _SingleChatPageState extends State<SingleChatPage> {
  double keyBoardHeight = 0;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).viewInsets.bottom != 0) {
      if (MediaQuery.of(context).viewInsets.bottom > keyBoardHeight) {
        setState(() {
          keyBoardHeight = MediaQuery.of(context).viewInsets.bottom;
        });
      }
    }
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: accentColor,
        titleSpacing: 0,
        title: const Text(
          "Yasir Oday",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom == 0 ? 8 : 0),
        child: Column(
          children: [
            const Expanded(child: Text("asd")),
            SizedBox(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: inputColor,
                            hintText: "Message",
                            hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(360),
                                borderSide: BorderSide.none)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Material(
                          color: accentColor,
                          borderRadius: BorderRadius.circular(360),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.send,
                                color: Colors.white,
                              ))),
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.black,
              width: double.infinity,
              height: MediaQuery.of(context).viewInsets.bottom != 0
                  ? keyBoardHeight
                  : 0,
            )
          ],
        ),
      ),
    );
  }
}
