import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:studysync/Api/GoogleSignin.dart';
import 'package:studysync/Screens/signup.dart';
import 'package:studysync/Screens/home.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffB3C9C9),
        appBar: AppBar(
          backgroundColor: Color(0xffB3C9C9),
          title: Text('Login Page',
          style: TextStyle(
              color: Colors.black,
          ),
          ),
            centerTitle: true,
        ),
        body: LoginForm(),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white54
            ),
            child: TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            decoration: BoxDecoration(
              color: Colors.white54
          ),
            child: TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white70)
            ),
            onPressed: () {
              String username = _usernameController.text;
              String password = _passwordController.text;
              //print('Username: $username, Password: $password');
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));

              });

            },
            child: Text('Login',
            style: TextStyle(
              fontSize: 20,

            ),
            ),
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              RichText(
                  text: TextSpan(
                    text: "Forget Password....?",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff551A8B),
                    ),
                  ),
              ),

              RichText(
                text: TextSpan(
                    text: "Create New Account...!",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff551A8B),
                    ),
                    recognizer: TapGestureRecognizer()..onTap =(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
                    }
                ),
              ),
            ],
          ),

          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white70),

                  ),
                  onPressed: SignIn,
                  child: Icon(Icons.g_mobiledata_rounded,color: Color(0xffDB4437),size: 40,),
                ),
              ),
              SizedBox(width: 30,),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white70),

                  ),
                  onPressed: (){},
                  child: Icon(Icons.facebook,color: Color(0xff4285F4),size: 30,),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  Future SignIn() async{
    await GoogleSigninApi.login();
  }
}