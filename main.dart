import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Prakriti | App of IITH',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightGreen,
      ),
      title: "loginPage",
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Login Page")),
        ),
        body: const MyLoginPage(),
        bottomNavigationBar: const MyBottomNavigation(),
      ),
    );
  }
}

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your username',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter the password',
            ),
            obscureText: true,
          ),
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.all(25),
            child: RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text(
                'LogIn',
              ),
              onPressed: () {
                print("Logged in!");
              },
            ),
          ),
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.all(25),
            child: RaisedButton(
              color: Colors.green,
              textColor: Colors.white,
              child: Text(
                'Register here',
              ),
              onPressed: () {
                print("Go for registration");
              },
            ),
          ),
        ),
      ],
    );
  }
}

class MyBottomNavigation extends StatelessWidget {
  const MyBottomNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            IconData(0xe3b2, fontFamily: 'MaterialIcons'),
          ),
          label: "Login",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            IconData(0xe1c4, fontFamily: 'MaterialIcons'),
          ),
          label: "Hello",
        ),
      ],
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
