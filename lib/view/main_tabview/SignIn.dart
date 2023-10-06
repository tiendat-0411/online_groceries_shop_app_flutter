

// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers, prefer_const_constructors, unrelated_type_equality_checks, empty_statements

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries/view/main_tabview/main_tabview.dart';
import 'package:online_groceries/view/main_tabview/utils/asset_path.dart';



class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  late String _name;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  var passwordVisible;
  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  static Future<User?> loginUsingEmailPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user not found') {
        print('No user found for that email');
      }
    }
    return user;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AssetPath.background1), fit: BoxFit.cover)),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 75),
                  child: Image(image: AssetImage(AssetPath.carrot)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 68, left: 30, right: 184.82),
                  child: Image(image: AssetImage(AssetPath.textlog)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 44),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Image(
                      image: AssetImage(AssetPath.email),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 44, right: 40),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Tài khoản không được để trống';
                      }
                      (value != _emailController);
                      return 'Sai tài khoản';
                    },
                    onSaved: (String? name) {
                      _name = name!;
                    },
                    controller: _emailController,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffE2E2E2),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffE2E2E2),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 44),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Image(image: AssetImage(AssetPath.password)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 44, right: 40),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) return 'Mật khẩu không được để trống';
                      if (value.length < 6) {
                        return 'Mật khẩu phải dài hơn 6 kí tự';
                      }
                      if (value != _passwordController) return "Sai mật khẩu";
                      return null;
                    },
                    obscureText: passwordVisible,
                    controller: _passwordController,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(
                              () {
                                passwordVisible = !passwordVisible;
                              },
                            );
                          },
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffE2E2E2),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffE2E2E2),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, right: 30),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Image(
                      image: AssetImage(AssetPath.forgotpassword),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 350,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff53B175),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: ElevatedButton(
                            onPressed: (() async {
                              User? user = await loginUsingEmailPassword(
                                  context: context,
                                  email: _emailController.text,
                                  password: _passwordController.text);
                              print(user);
                              if (user != null) {
                                Get.to(MainTabView());
                              } else {
                                if (_formkey.currentState!.validate()) {
                                  return;
                                }
                                ;
                              }
                            }),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Color(0xff53B175)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))))),
                            child: Text(
                              'Log In',
                              style: TextStyle(
                                  fontFamily: 'Gilroy',
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
