import 'package:chattingapp/_config/_colors.dart';
import 'package:chattingapp/_config/_misc_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Flutter Chatter",
                    style: GoogleFonts.dancingScript(
                      fontWeight: FontWeight.bold,
                      fontSize: 48,
                    ),
                  ),
                ),
                defaultGap(),
                defaultGap(),
                Form(
                    child: Column(
                  children: [
                    DefaultInput(
                      hint: "email and address",
                      controller: _email,
                      keyboardT: TextInputType.emailAddress,
                      callback: (_) {
                        setState(() {});
                      },
                    ),
                    defaultGap(),
                    defaultGap(),
                    DefaultInput(
                      hint: "password",
                      controller: _password,
                      keyboardT: TextInputType.visiblePassword,
                      sensitive: true,
                      callback: (_) {
                        setState(() {});
                      },
                    )
                  ],
                )),
                defaultGap(),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text("Forgot password?",
                          style: TextStyle(
                              color: Colors.blueAccent, fontSize: 13))),
                ),
                defaultGap(),
                AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: double.infinity,
                    curve: Curves.easeOutCirc,
                    height: _email.text.trim().isNotEmpty &&
                            _password.text.trim().isNotEmpty
                        ? 55
                        : 0,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("log in",
                          style: TextStyle(color: Colors.white)),
                    )),
                defaultGap(),
                defaultGap(),
                dashedText("or"),
                defaultGap(),
                defaultGap(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.zero)),
                      child: const Text(
                        "Sign up!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DefaultInput extends StatefulWidget {
  const DefaultInput({
    Key? key,
    required this.hint,
    required this.controller,
    required this.keyboardT,
    this.sensitive = false,
    required this.callback,
  }) : super(key: key);
  final String hint;
  final TextEditingController controller;
  final TextInputType keyboardT;
  final bool sensitive;
  final Function(String) callback;
  @override
  State<DefaultInput> createState() => _DefaultInputState();
}

class _DefaultInputState extends State<DefaultInput> {
  bool hideText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      cursorColor: Colors.white,
      controller: widget.controller,
      keyboardType: widget.keyboardT,
      onChanged: (_) {
        widget.callback(_);
      },
      obscureText: widget.sensitive && hideText,
      decoration: InputDecoration(
          filled: true,
          fillColor: accentColor,
          suffixIcon: widget.sensitive
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      hideText = !hideText;
                    });
                  },
                  icon: FaIcon(
                    hideText ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash,
                    color: Colors.white,
                    size: 18,
                  ))
              : null,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none),
          hintText: widget.hint,
          hintStyle:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
    );
  }
}
