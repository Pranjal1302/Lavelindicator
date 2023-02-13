import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:yoga/services/auth.dart';
import 'package:yoga/shared/loading.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  const Register({Key? key, required this.toggleView}) : super(key: key);
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  String email = '';
  String password = '';
  String error = '';
  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            body: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 0, 158, 250),
                    Color.fromARGB(255, 62, 114, 182),
                    Color.fromARGB(255, 55, 80, 163),
                    Color.fromARGB(255, 48, 61, 138),
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
              padding: const EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) =>
                          value!.isEmpty ? 'Enter an email' : null,
                      onChanged: (value) {
                        setState(() => email = value);
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hintText: "Enter your email",
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(Icons.email, color: Colors.white),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) => value!.length < 6
                          ? 'Password should be of 6 characters long'
                          : null,
                      onChanged: (value) {
                        setState(() => password = value);
                      },
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter your password",
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(Icons.security, color: Colors.white),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    ElevatedButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              loading = true;
                            });
                            dynamic result = await _auth
                                .registerWithEmailAndPassword(email, password);
                            if (result == null) {
                              setState(() {
                                loading = false;
                                error = 'Please supply a valid email';
                              });
                            } else {
                              setState(() {
                                loading = false;
                                error = 'Registered Successfully';
                              });
                            }
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 89, 158, 222),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text('Register'),
                          ],
                        )),
                    TextButton.icon(
                      onPressed: () {
                        widget.toggleView();
                      },
                      label: const Text('Already have an account?',
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic)),
                      icon: const Icon(Icons.app_registration,
                          color: Colors.white),
                    ),
                    Text(error,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 246, 162, 182),
                            fontSize: 14.0)),
                    const SizedBox(
                      height: 70,
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
