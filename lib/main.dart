import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: 'Email'),
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Password'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                // Add login logic here
              },
              child: Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );
              },
              child: Text('Create New Account'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                );
              },
              child: Text('Forgot Password?'),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: 'Email'),
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Password'),
              obscureText: true,
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Confirm Password'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VerificationPage(isReset: false)),
                );
              },
              child: Text('Sign Up'),
            ),
            SizedBox(height: 20),
            Text(
              "Already have an account?",
              style: TextStyle(fontSize: 16),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Go back to login page
              },
              child: Text('Go to Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: 'Email'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResetPasswordPage()),
                );
              },
              child: Text('Confirm'),
            ),
          ],
        ),
      ),
    );
  }
}

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset Password'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: 'New Password'),
              obscureText: true,
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Confirm New Password'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VerificationPage(isReset: true)),
                );
              },
              child: Text('Reset Password'),
            ),
          ],
        ),
      ),
    );
  }
}

class VerificationPage extends StatelessWidget {
  final bool isReset;

  VerificationPage({required this.isReset});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verification Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              maxLength: 1,
              keyboardType: TextInputType.number,
            ),
            TextField(
              maxLength: 1,
              keyboardType: TextInputType.number,
            ),
            TextField(
              maxLength: 1,
              keyboardType: TextInputType.number,
            ),
            TextField(
              maxLength: 1,
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child: Text('OK'),
            ),
          ],
        ),
      ),
    );
  }
}
