import 'package:flutter/material.dart';
import 'package:pet_app/user_details_page.dart';

// import 'dart:math';

class LogScreen extends StatelessWidget {
  const LogScreen({super.key});
  static const routeName = '/log';

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(21, 0, 31, 1),
                  Color.fromRGBO(66, 1, 51, 1),
                  Color.fromRGBO(32, 1, 47, 1),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.4, 0.75, 0.9],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              height: deviceSize.height,
              width: deviceSize.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 200,
                  ),
                  Container(
                    width: double.infinity,
                    // margin: EdgeInsets.only(bottom: 20.0),
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Center(
                      child: Text(
                        'Welcome Back!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(
                      bottom: 25.0,
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: const Center(
                      child: Text(
                        'welcome back we missed you',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: deviceSize.width > 600 ? 2 : 1,
                    child: Auth(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final Map<String, String> _authData = {
    'email': '',
    'password': '',
  };
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                left: 12,
              ),
              padding: EdgeInsets.all(8),
              width: double.infinity,
              child: const Text(
                'Username',
                style: TextStyle(color: Colors.white70, fontSize: 18),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 13, right: 15, bottom: 13),
              child: TextFormField(
                style: const TextStyle(color: Colors.white70, fontSize: 20),
                decoration: const InputDecoration(
                  labelStyle: TextStyle(color: Colors.white70),
                  prefixIcon: Icon(
                    Icons.account_circle,
                    color: Colors.white70,
                  ),
                  labelText: 'Username',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white54,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty || !value.contains('@')) {
                    return 'Invalid email!';
                  }
                },
                onSaved: (value) {
                  _authData['email'] = value!;
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 12,
              ),
              padding: EdgeInsets.all(8),
              width: double.infinity,
              child: Text(
                'Password',
                style: TextStyle(color: Colors.white70, fontSize: 18),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 13, right: 15),
              child: TextFormField(
                style: const TextStyle(color: Colors.white70, fontSize: 30),
                decoration: const InputDecoration(
                  labelStyle: TextStyle(color: Colors.white70),
                  prefixIcon: Icon(
                    Icons.key,
                    color: Colors.white70,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye_sharp,
                    color: Colors.white70,
                  ),
                  labelText: 'Password',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white54,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                obscureText: true,
                controller: _passwordController,
                validator: (value) {
                  if (value!.isEmpty || value.length < 5) {
                    return 'Password is too short!';
                  }
                },
                onSaved: (value) {
                  _authData['password'] = value!;
                },
              ),
            ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.only(right: 15),
                alignment: Alignment.bottomRight,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(color: Colors.white54),
                    ))),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(8)),
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(215, 117, 255, 1).withOpacity(0.5),
                    Color.fromRGBO(255, 188, 117, 1).withOpacity(0.9),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0, 1],
                ),
              ),
              width: double.infinity,
              margin: EdgeInsets.only(left: 13, right: 15, bottom: 13),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => (PersonalDetailsScreen())));
                },
                child: Text(
                  'Sign in',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  padding: EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
