

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Text('Login',
                  style:TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold

                  ) ,),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: emailController,
                  // onChanged: (value){
                  //   print(value);
                  // },
                  // onFieldSubmitted: (value){
                  //   print(value);
                  // },
                  keyboardType:TextInputType.emailAddress ,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email Address',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(onPressed: (){
                    print(emailController.text);
                    print(passwordController.text);
                  },
                  child:Text('Login',
                    style: TextStyle(
                      color: Colors.white,
                    ),),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account?'),
                    TextButton(onPressed: (){}, child: Text('Register Now'))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
