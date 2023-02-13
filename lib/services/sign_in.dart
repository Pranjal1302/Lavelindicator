import 'package:flutter/material.dart';
import 'package:yoga/level/levelhome.dart';
import 'package:yoga/screens/authenticate/registration.dart';
import 'package:yoga/services/auth.dart';
import 'package:yoga/shared/loading.dart';

import '../profile_screen.dart';
import '../screens/home/home.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  const SignIn({Key? key, required this.toggleView}) : super(key: key);
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Get Water Level",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
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
                        labelStyle: TextStyle(color: Colors.white),
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
                          ? 'Enter a password 6+ chars long'
                          : null,
                      onChanged: (value) {
                        setState(() => password = value);
                      },
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter your password",
                        hintStyle: const TextStyle(color: Colors.white),
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
                                .signInWithEmailAndPassword(email, password);
                            if (result == null) {
                              setState(() {
                                error =
                                    'Could not sign in with those credentials';
                                loading = false;
                              });
                            } else {
                              setState(() => error = '');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const levelhome()),
                              );
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
                          children: [
                            Text('Login'),
                          ],
                        )),
                    TextButton.icon(
                      onPressed: () {
                        widget.toggleView();
                      },
                      label: const Text('Don\'t have an account? Register',
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic)),
                      icon: const Icon(Icons.app_registration,
                          color: Colors.white),
                    ),
                    Text(error,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 255, 156, 149),
                            fontSize: 14.0)),
                    const SizedBox(
                      height: 70,
                    )
                  ],
                ),
              ),
            ),
          );
  }
}
