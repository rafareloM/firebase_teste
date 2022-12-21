import 'package:firebase_teste/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var email = '';
    var password = '';
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            onChanged: (value) => email = value,
          ),
          const SizedBox(
            height: 50,
          ),
          TextFormField(
            onChanged: (value) => password = value,
          ),
          ElevatedButton(
            onPressed: () async {
              try {
                final credential =
                    await FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: email,
                  password: password,
                );
                if (credential.user != null) {
                  Navigator.popAndPushNamed(
                    context,
                    '/home',
                  );
                }
              } on FirebaseAuthException catch (e) {
                if (e.code == 'weak-password') {
                  print('The password provided is too weak.');
                } else if (e.code == 'email-already-in-use') {
                  print('The account already exists for that email.');
                }
              } catch (e) {
                print(e);
              }
            },
            child: const Text('Login'),
          ),
          ElevatedButton(
            onPressed: () {
              FirebaseAuth.instance.createUserWithEmailAndPassword(
                email: email,
                password: password,
              );
            },
            child: const Text('Register'),
          ),
        ],
      ),
    );
  }
}
