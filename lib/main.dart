import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
   return const MaterialApp(
     debugShowCheckedModeBanner: false,
     home: LoginDemo(),
   );
  }

}

class LoginDemo extends StatefulWidget {
  const LoginDemo({Key? key}) : super(key: key);

  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("User Login")
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Center(
                child: SizedBox(
                  width: 200,
                    height: 150,
                  child: Image.asset('asset/images/Flutter.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
              left: 15.0, right: 15.0, top: 15.0, bottom: 0
            ),
            child: Column(
              children: const [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Username",
                    hintText: "Enter your Username"
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    hintText: "Enter your Password"
                  ),
                ),
              ],
            ),

            ),
            FlatButton(
                onPressed: (){},
                child: const Text(
                  "Forgot Password",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 10.0
                  ),
                )
            ),
            Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: FlatButton(
                onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomePage()),
                  );
                },
                 child: const Text(
                   "Login",
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 20,
                     fontWeight: FontWeight.w600
                   ),
                 ),
              ),
            ),
            const SizedBox(
              height: 150
            ),
            const Text("new user? Create an account"),
          ],
        ),
      ),
    );
  }



}
