import 'package:flutter/material.dart';
import 'package:travel_connection/home.dart';
import 'package:email_validator/email_validator.dart';

class Connection extends StatefulWidget {
  const Connection({super.key});

  @override
  State<Connection> createState() => _ConnectionState();
}

bool oeilopen = true;

class _ConnectionState extends State<Connection> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              color: const Color(0xff018868),
              width: double.infinity,
              height: 200,
              child: GestureDetector(
                onLongPress: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  )
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 100, right: 350),
                  child: Center(
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.white,
                      child: const Icon(
                        Icons.arrow_back,
                        color: Color(0xff018868),
                      ),
                    ),
                  ),
                ),
              )),
          Align(
            alignment: Alignment.bottomLeft,
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.only(topRight: Radius.circular(50)),
              child: Container(
                  width: double.infinity,
                  height: 800,
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: Center(
                          child: Text(
                            'Hello again!',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Text(
                        'Sign in to your account',
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: <Widget>[
                              const Padding(
                                padding: EdgeInsets.only(right: 330),
                                child: Text('Email'),
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter an email ',
                                ),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Veuillez entrer un email';
                                  }
                                  String pattern =
                                      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
                                  RegExp regex = RegExp(pattern);
                                  if (!regex.hasMatch(value)) {
                                    return 'Veuillez entrer un email valide';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 20),
                              const Padding(
                                padding: EdgeInsets.only(right: 300),
                                child: Text('Password'),
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  hintText: 'Enter a password',
                                  suffix: InkWell(
                                      onTap: () => setState(() {
                                            oeilopen = !oeilopen;
                                          }),
                                      child: oeilopen
                                          ? const Icon(
                                              Icons.visibility,
                                              color: Colors.black,
                                            )
                                          : const Icon(
                                              Icons.visibility_off,
                                              color: Color(0xff000000),
                                            )),
                                ),
                                obscureText: oeilopen, // Masque le texte
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Veuillez entrer un mot de passe';
                                  }
                                  if (value.length < 6) {
                                    return 'Le mot de passe doit comporter au moins 6 caractères';
                                  }
                                  return null;
                                },
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 215, top: 10),
                                child: Text(
                                  'Forgot my password',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(height: 20),
                              SizedBox(
                                width: double.infinity,
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                            content: Text('Formulaire valide')),
                                      );
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff018868),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5))),
                                  child: const Text(
                                    'Se connecter',
                                    style: TextStyle(color: Color(0xffffffff)),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: const Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Text(
                                        '••••••••••••••••••••••••••••',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 1.0),
                                      child: Text(
                                        'or with',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        '••••••••••••••••••••••••••••',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
