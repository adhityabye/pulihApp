import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              obscureText: true, // To hide the password text
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Implement the login functionality here
              },
              child: Text('Login'),
            ),
            TextButton(
              onPressed: () {
                // Implement the registration screen navigation here
              },
              child: Text('Create an account'),
            ),
            TextButton(
              onPressed: () {
                // Implement the password reset screen navigation here
              },
              child: Text('Forgot Password'),
            ),
          ],
        ),
      ),
    );
  }
}
