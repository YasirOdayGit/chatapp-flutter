import 'package:chattingapp/_config/_colors.dart';
import 'package:chattingapp/_config/_misc_widgets.dart';
import 'package:chattingapp/_config/_tk.dart';
import 'package:chattingapp/pages/single_chat_page.dart';
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
    Size size = MediaQuery.of(context).size;
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
                    radius: radius,
                  ),
                  const SizedBox(width: 15),
                  const Expanded(
                      child: Text(
                    "Yasir Kadhim",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        overflow: TextOverflow.ellipsis),
                  )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.settings,
                        color: Colors.white,
                      ))
                ],
              ),
              defaultGap(),
              Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: inputColor,
                        hintText: "Search..",
                        hintStyle: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w500),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(inputRadius),
                            borderSide: BorderSide.none)),
                  )),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: SizedBox(
                      height: 55,
                      child: Material(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(inputRadius),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 16,
                            )),
                      ),
                    ),
                  )
                ],
              ),
              defaultGap(),
              defaultGap(),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Contacts",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              defaultGap(),
              ...List.generate(
                  25,
                  (index) => InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => const SingleChatPage()));
                        },
                        child: Ink(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: SizedBox(
                              width: size.width,
                              height: 40,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(imageLink),
                                    radius: radius,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "Yasir Kadhim",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15),
                                          ),
                                          Text(
                                            "Here is another tutorial, if you like the link is www.youtube.com/something",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 13,
                                                overflow:
                                                    TextOverflow.ellipsis),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Align(
                                    alignment: Alignment.topRight,
                                    child: Text(
                                      "08:43",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
