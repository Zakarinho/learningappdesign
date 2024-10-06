import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:learning_app/screenfour.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.purple,
        elevation: 0,
        title: const Text(
          'LOG IN',
          style: TextStyle(color: Colors.purple),
        ),
        leading: IconButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.purple),
          ),
          onPressed: () {
            setState(
              () {
                Navigator.pop(context);
              },
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Text(
            'Learning App',
            style: TextStyle(
              color: Colors.purple,
              fontSize: 28,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              'Enter your login details to access your account',
              style: TextStyle(
                color: Colors.purple,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: ElevatedButton.icon(
                    style: ButtonStyle(
                      iconColor: MaterialStatePropertyAll(Colors.white),
                      minimumSize: MaterialStatePropertyAll(
                        Size(130, 50),
                      ),
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.facebook),
                    label: Text('Facebook')),
              ),
              SizedBox(
                width: 15,
              ),
              ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red),
                    iconColor: MaterialStatePropertyAll(Colors.white),
                    minimumSize: MaterialStatePropertyAll(
                      Size(130, 50),
                    ),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.g_mobiledata_outlined),
                  label: Text('Google')),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: ('Email'),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    hintText: ('Password'),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Checkbox(
                        checkColor: Colors.white,
                        activeColor: Colors.purple,
                        value: ischecked,
                        onChanged: (bool? newValue) {
                          setState(() {
                            ischecked = newValue!;
                          });
                        }),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Remember me/?',
                      style: TextStyle(color: Colors.purple),
                    ),
                  ),
                  SizedBox(
                    width: 88,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forget password?',
                          style: TextStyle(color: Colors.red),
                        )),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.purple),
                        minimumSize: MaterialStateProperty.all(Size(200, 50)),
                      ),
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => screenfour()));
                        });
                      },
                      child: Text('Login with your account'),
                    ),
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(55.0),
            child: Row(
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.purple),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Create account",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
