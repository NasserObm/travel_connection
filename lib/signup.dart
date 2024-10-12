// ignore_for_file: unused_import

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travel_connection/connection.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: double.infinity,
              child: Image.asset(
                'assets/img/pattern.jpg',
                fit: BoxFit.cover,
              )),
          Align(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Connection())),
                        child: Container(
                          width: 50,
                          height: 50,
                          color: const Color(0xffffffff),
                          child: const Icon(
                            Icons.arrow_back,
                            color: Color(0xff018868),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 130,
                      ),
                      const Text(
                        'Sign up',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Create  Your\nAccount',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const Padding(
                    padding: EdgeInsets.only(right: 300), child: Text('Email')),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xffffffff),
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
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(right: 300),
                  child: Text('Password'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
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
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(right: 250),
                  child: Text('Re-Enter password'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xff018868),
                      border: const OutlineInputBorder(),
                      hintText: 'Re-Enter a password',
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
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Formulaire valide')),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      child: const Text(
                        'Sign in',
                        style: TextStyle(
                            color: Color(0xff018868),
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'By cliking Sign up you agree to our ',
                  style: TextStyle(color: Colors.white),
                ),
                const Text(
                  'Terms of Service',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                      decorationThickness: 2,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style:
                          TextStyle(color: Color.fromARGB(255, 51, 150, 132)),
                    ),
                    const SizedBox(width: 3),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Connection())),
                      child: const Text(
                        'Sign in',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
