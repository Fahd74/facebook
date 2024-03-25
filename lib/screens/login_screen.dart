import 'package:facebook/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:25.0 ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Spacer(flex: 4),
            Icon(Icons.facebook,color: Colors.white,size: 70,),
            Spacer(flex: 1),
            TextField(
              decoration: InputDecoration(
              hintText: 'Email Or Phone',
              hintStyle: TextStyle(fontSize: 20 ,color: Colors.white70),
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color:
              Colors.white30)),
            ),),
            SizedBox(height: 16,),
            TextField(
              decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: TextStyle(fontSize: 20 ,color: Colors.white70),
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color:
              Colors.white30)),

            ),),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
                },
                child: Text('Login' ,style: TextStyle(fontSize: 18,color: Colors.white30)),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  backgroundColor:Colors.white24),
            ),
            Spacer(flex: 4),
            Text('Sign Up for facebook',
              style: TextStyle(color: Colors.white,fontSize: 18),
              textAlign: TextAlign.center,),
            SizedBox(height: 20,),
            Text('Forget Password?',
              style: TextStyle(color: Colors.white,fontSize: 18),
              textAlign: TextAlign.center,),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}