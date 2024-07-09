import 'package:baraeim/screens/reset_password.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  List<TextEditingController> controllers =
  List.generate(5, (index) => TextEditingController());

  @override
  void dispose() {
    // Clean up the controllers when the Widget is disposed
    controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  String? _validateOTP(String value) {
    if (value.isEmpty) {
      return 'Please enter all OTP digits.';
    }
    if (value.length != 1) {
      return 'Please enter a single digit.';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 31, left: 24, right: 24),
        child: ListView(
          children: [
            Column(
              children: [
                Image.asset(
                  height: 295,
                  width: 380,
                  'assets/otp.png',
                ),
                const SizedBox(height: 42),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      5,
                          (index) => Container(
                        width: 50,
                        margin: const EdgeInsets.all(5),
                        child: TextFormField(
                          controller: controllers[index],
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          onChanged: (String value) {
                            if (value.length == 1 && index != 4) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(color: Color(0xFFF687B3)),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Color(0xFFF687B3)),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 46),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(300, 20),
                    backgroundColor: const Color(0xFFF687B3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                  ),
                  onPressed: () {
                    // Validate all OTP fields
                    bool isValid = true;
                    for (int i = 0; i < controllers.length; i++) {
                      if (_validateOTP(controllers[i].text) != null) {
                        isValid = false;
                        break;
                      }
                    }

                    if (isValid) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ResetPassword()),
                      );
                    } else {
                      // Show some error or alert indicating OTP is invalid
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Invalid OTP'),
                          content: const Text('Please enter valid OTP digits.'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 14.0),
                    child: Text(
                      'Continue',
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
