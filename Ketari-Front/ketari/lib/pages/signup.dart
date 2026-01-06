import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    final phoneController = TextEditingController();
    final emailController = TextEditingController();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Image.asset(
            'assets/images/ketari.png',
            height: size.height * 0.1,
            width: size.width * 1,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: SizedBox(height: size.height * 0.05),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 235, 222, 179),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  'Welcome To Ketari\n'
                  '  Signup Now',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Inter',
                    fontSize: size.width * 0.05,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                ReusableTextField(
                  controller: phoneController,
                  hint: "Phone Number",
                  keyboardtype: TextInputType.phone,
                ),
                SizedBox(height: size.height * 0.05),
                ReusableTextField(
                  controller: emailController,
                  hint: "Email",
                  keyboardtype: TextInputType.text,
                ),
                SizedBox(height: size.height * 0.03),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreenAccent,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sign Up",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.04),
                Row(
                  children: [
                    Expanded(child: Divider(color: Colors.black)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Or continue with'),
                    ),
                    Expanded(child: Divider(color: Colors.black)),
                  ],
                ),
                SizedBox(height: size.height * 0.03),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreenAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/google.png',
                        height: 24,
                        width: 24,
                      ),
                      SizedBox(width: size.width * 0.02),
                      Text("Google"),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreenAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/linkedin.png',
                        height: 24,
                        width: 24,
                      ),
                      SizedBox(width: size.width * 0.02),
                      Text("Linkden"),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.07),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 67),
                      child: Text('Already have an account?'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 1),
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Log In'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 9),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ReusableTextField extends StatelessWidget {
  const ReusableTextField({
    super.key,
    required this.controller,
    required this.hint,
    required this.keyboardtype,
  });

  final TextEditingController controller;
  final String hint;
  final TextInputType keyboardtype;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.black),
        ),
        hintText: hint,
      ),
      keyboardType: keyboardtype,
    );
  }
}
