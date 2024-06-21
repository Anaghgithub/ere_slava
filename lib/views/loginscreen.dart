import 'package:ere_slava/controllers/Login_controller.dart';
import 'package:ere_slava/views/password.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailMobileInput = TextEditingController();
  final TextEditingController passwordInput = TextEditingController();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 60),
              const Text(
                'LOGIN',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF121212),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(),
              const SizedBox(height: 30),
              const Center(
                child: Text(
                  "sign in to start your session",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: emailMobileInput,
                decoration: InputDecoration(
                  hintText: 'Email or Phone',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              PasswordField(controller: passwordInput),
              const SizedBox(height: 25),
              Container(
                  padding: const EdgeInsets.only(left: 200),
                  child: ElevatedButton(
                    onPressed: _isLoading
                        ? null
                        : () {
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                _isLoading = true;
                              });
                              LoginController()
                                  .login(
                                      emailMobileInput.text, passwordInput.text)
                                  .then((_) {
                                setState(() {
                                  _isLoading = false;
                                });
                              });
                            }
                          },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(5.0), // Circular radius
                      ),
                    ),
                    child: _isLoading
                        ? Center(
                            child: LoadingAnimationWidget.inkDrop(
                              color: Colors.white,
                              size: 30,
                            ),
                          )
                        : const Text(
                            'Submit',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                  )
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
