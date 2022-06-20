import 'package:chattingapp/_config/_tk.dart';
import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String imageLink =
      "https://media-exp2.licdn.com/dms/image/C4E03AQFvUPGrX-yjdQ/profile-displayphoto-shrink_800_800/0/1634089501135?e=1661385600&v=beta&t=7eFZeKlu5d0Vfwrd8OirJiomVTMw3cYYD5X4B7s5oVQ";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      imageLink,
                    ),
                    radius: 45 / 2,
                  ),
                  const SizedBox(width: 15),
                  const Text(
                    "Yasir Kadhim",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 27),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(child: TextFormField()),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Material(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          )),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
