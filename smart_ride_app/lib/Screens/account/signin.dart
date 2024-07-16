import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool? rememberMe = true;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign In",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter Your Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none,
                ),
                fillColor: Color.fromARGB(255, 237, 247, 255),
                filled: true,
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none,
                ),
                fillColor: Color.fromARGB(255, 237, 247, 255),
                filled: true,
                prefixIcon: Icon(Icons.remove_red_eye),
              ),
              obscureText: true,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Checkbox(
                  value: rememberMe,
                  onChanged: (bool? value) {
                    setState(() {
                      rememberMe = value;
                    });
                  },
                  checkColor: Color.fromARGB(255, 0, 122, 255),
                  activeColor: Color.fromARGB(255, 237, 247, 255),
                ),
                Text("Remember Me"),
                Spacer(),
                Text(
                  "Forgot Pasword",
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
            SizedBox(
              height: 100,
            ),
            FilledButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 0, 122, 255)),
                  minimumSize: MaterialStateProperty.all(Size(350, 50))),
              onPressed: () => {
                Navigator.pushNamed(context, '/home'),
              },
              child: Text("Sign In", style: TextStyle(color: Colors.white)),
            ),
             const Row(
              children: [
                
                Expanded(
                  child: Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text("OR"),
                ),
                Expanded(child: Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
                ),
                
              ],
            ),
            OutlinedButton.icon(
            
              onPressed: () =>{

                }, 
                icon: Image.asset('assets/images/gmail_icon.png',height: 20,)
                ,
                
                label: const Text("Sign In with Gmail",
                style: TextStyle(
                  color: Colors.black
                
                
                ),
                ),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    Size(350, 50)
                  )
                )
                ,
                )
          ],
        ),
      ),
    );
  }
}
