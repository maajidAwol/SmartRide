import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool? rememberMe = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(25),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height:20),
            Text(
              "Sign Up",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none,
                  ),
                  fillColor: Color.fromARGB(255, 237, 247, 255),
                  filled: true,
                  prefixIcon: Icon(Icons.person),
                
                ),
            ),
            SizedBox(height:20)
            ,
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
              height: 10,
            ),
            Text("Atleast 1 number or a special character"),
            SizedBox(
              height: 65,
            ),
            FilledButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 0, 122, 255)),
                  minimumSize: MaterialStateProperty.all(Size(350, 50))),
              onPressed: () => {
                Navigator.pushNamed(context, '/signin'),
              },
              child: Text("Sign Up", style: TextStyle(color: Colors.white)),
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
                
                label: const Text("SignUp with Gmail",
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
