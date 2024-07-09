import 'package:baraeim/base_page/presentation/pages/base_page.dart';
import 'package:baraeim/home_page/presentation/pages/home_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class RegisterAsMother extends StatefulWidget {
  const RegisterAsMother({super.key});

  @override
  State<RegisterAsMother> createState() => _RegisterAsMotherState();
}

class _RegisterAsMotherState extends State<RegisterAsMother> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _lengthController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? _name;
  String? _email;
  String? _password;
  double? _weight;
  double? _height;
  String? _gender;
  DateTime? _dob;
  String? _description;

  bool _isLoading = false;

  void _singUp() async {
    try {
      setState(() {
        _isLoading = true;
      });
      var res = await Dio().post(
        '/api/Mothers/signup',
        options: Options(headers: {
          'Content-Type': 'application/json',
        }),
        data: {
          "name": _nameController.text,
          "email": _emailController.text,
          "password": _passwordController.text,
          "gender": _genderController.text,
          "babyWeight": double.parse(_weightController.text),
          "childLength": double.parse(_lengthController.text),
          "dateOfBirth": DateTime.parse(_dateController.text).toIso8601String(),
          "description": _descriptionController.text
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
              builder: (context) => const BasePage(),
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
          padding: const EdgeInsets.only(top: 80, right: 34, left: 34),
          child: ListView(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Sign up',
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
                  'Name',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: _nameController,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name.';
                    }
                    return null;
                  },
                  onSaved: (value) => _name = value!,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                        color: const Color(0xFF1E293B).withOpacity(0.2)),
                    hintText: 'your name',
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
                const SizedBox(
                  height: 32,
                ),
                //////////////////////////////////////////////
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
                  onSaved: (value) => _email = value,
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
                const SizedBox(
                  height: 32,
                ),
                /////////////////////////////////////////////
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
                  onSaved: (value) => _password = value,
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
                const SizedBox(
                  height: 32,
                ),
                ///////////////////////////////////
                const Row(
                  children: [
                    Text(
                      'Gender',
                      style:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 110,
                    ),
                    Text(
                      'Baby weight',
                      style:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _genderController,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your gender.';
                          }
                          return null;
                        },
                        onSaved: (value) => _gender = value,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                              color: const Color(0xFF1E293B).withOpacity(0.2)),
                          hintText: 'male',
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
                    ),
                    const SizedBox(
                      width: 32,
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: _weightController,
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your weight.';
                          }
                          // Additional validation for numeric input
                          try {
                            double.parse(value);
                          } catch (e) {
                            return 'Please enter a valid weight.';
                          }
                          return null;
                        },
                        onSaved: (value) => _weight = double.parse(value!),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                              color: const Color(0xFF1E293B).withOpacity(0.2)),
                          hintText: '3kg',
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
                    ),
                  ],
                ),
                //////////////////////////////
                const SizedBox(
                  height: 32,
                ),
                const Row(
                  children: [
                    Text(
                      'date of birth',
                      style:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      'Child is length',
                      style:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _dateController,
                        keyboardType: TextInputType.datetime,
                        // decoration: InputDecoration(labelText: 'Date of Birth'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your date of birth.';
                          }
                          // Additional validation for date input
                          try {
                            // Check if the entered date is a valid date
                            DateTime.parse(value);
                          } catch (e) {
                            return 'Please enter a valid date of birth.';
                          }
                          return null;
                        },
                        onSaved: (value) => _dob = DateTime.parse(value!),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                              color: const Color(0xFF1E293B).withOpacity(0.2)),
                          hintText: '2024-02-13',
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
                    ),
                    const SizedBox(
                      width: 32,
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: _lengthController,
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your height.';
                          }
                          // Additional validation for numeric input
                          try {
                            double.parse(value);
                          } catch (e) {
                            return 'Please enter a valid height.';
                          }
                          return null;
                        },
                        onSaved: (value) => _height = double.parse(value!),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                              color: const Color(0xFF1E293B).withOpacity(0.2)),
                          hintText: '10cm',
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
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  'Description of the condition',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: _descriptionController,
                  keyboardType: TextInputType.multiline,
                  maxLines: 3,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your description.';
                    }
                    // No validation required for description field
                    return null;
                  },
                  onSaved: (value) => _description = value,

                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                        color: const Color(0xFF1E293B).withOpacity(0.2)),
                    hintText:
                    """Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Maecenas facilisis sed ipsum iaculis semper.""",
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
                const SizedBox(
                  height: 60,
                ),
                Visibility(
                  visible:!_isLoading ,
                  replacement: const Center(child: CircularProgressIndicator(color: Color(0xFFF687B3),)),
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
                const SizedBox(
                  height: 60,
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
