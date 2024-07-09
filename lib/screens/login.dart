import 'package:baraeim/screens/choose_register.dart';
import 'package:baraeim/screens/forget_password.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool isChecked = false;
  bool _isLoading = false;

  void _singUp() async {
    try {
      setState(() {
        _isLoading = true;
      });
      var res = await Dio().post(
        'https://4d10-156-197-249-206.ngrok-free.app/api/Mothers/login',
        options: Options(
          contentType: Headers.jsonContentType,
          responseType: ResponseType.json,
        ),
        data: {
          "email": _emailController.text.trim(),
          "password": _passwordController.text.trim()
        },
      );
      if (res.statusCode == 200) {
        setState(() {
          _isLoading = false;
        });
        if (context.mounted) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ChooseRegister(),
            ),
          );
        }
      }
    } on DioException catch (error) {
      setState(() {
        _isLoading = false;
      });
      debugPrint(error.response.toString());
      debugPrint(error.message.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(top: 80, left: 34, right: 34),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sign in',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFC78A7)),
                  ),
                  const Text(
                    'If you don’t have an account register',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Row(
                    children: [
                      Text(
                        'You can ',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Sign up here ! ',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.orange),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 72,
                  ),
                  const Text(
                    'Email',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email address.';
                      }
                      return null;
                    },
                    // onSaved: (value) => _email = value,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                          color: const Color(0xFF1E293B).withOpacity(0.2)),
                      hintText: '@gmail.com',
                      fillColor: const Color(0xFFF8FAFC),
                      filled: true,
                      // labelStyle: TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ),
                    ),
                    style: const TextStyle(color: Colors.black),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Password',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a password.';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters long.';
                      }
                      return null;
                    },
                    // onSaved: (value) => _password = value,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                          color: const Color(0xFF1E293B).withOpacity(0.2)),
                      hintText: '........',
                      fillColor: const Color(0xFFF8FAFC),
                      filled: true,
                      // labelStyle: TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ),
                    ),
                    style: const TextStyle(color: Colors.black),
                  ),
                  Row(
                    children: <Widget>[
                      Checkbox(
                        activeColor: Colors.blue,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                          // قم بتنفيذ التعامل مع اختيار الذاكرة هنا
                        },
                      ),
                      Row(
                        children: [
                          const Text(
                            'Remember me',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const ForgetPassword()));
                            },
                            child: const Text(
                              'Forgot the password ?',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF5890FF)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 80.0),
                  Visibility(
                    visible: !_isLoading,
                    replacement: const Center(
                        child: CircularProgressIndicator(
                          color: Color(0xFFF687B3),
                        )),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(300, 20),
                        backgroundColor: const Color(0xFFF687B3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _singUp();
                        }
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(top: 14.0),
                        child: Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0.09,
                            letterSpacing: 0.12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

bool isValidEmail(String email) {
  return email.contains('@gmail.com');
}
