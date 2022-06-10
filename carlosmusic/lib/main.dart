// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_app1/cancionesmodell.dart';
import 'package:carlosmusic/principals.dart';
// import 'package:flutter_app1/reproductor.dart';
import 'package:carlosmusic/decorationlogin.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}

// ignore: camel_case_types
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepagepState();
}

// ignore: camel_case_types
class _homepagepState extends State<homepage> {
  // Future<FirebaseApp> _initializeFirebase() async {
  //   FirebaseApp firebaseApp = await Firebase.initializeApp();
  //   return firebaseApp;
  // }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: login()
        // FutureBuilder(
        //   future: _initializeFirebase(),
        //   builder: (context, snapshot) {
        //     if (snapshot.connectionState == ConnectionState.done) {
        //       return login();
        //     }
        //     return const Center(
        //       child: CircularProgressIndicator(),
        //     );
        //   },
        // ),
        );
  }
}

// ignore: camel_case_types
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<login> {
  // static Future<User?> loginUsingEmailPassword(
  //     {required String email,
  //     required String password,
  //     required BuildContext context}) async {
  //   FirebaseAuth auth = FirebaseAuth.instance;
  //   User? user;
  //   try {
  //     UserCredential userCredential = await auth.signInWithEmailAndPassword(
  //         email: email, password: password);
  //     user = userCredential.user;
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == "user not found") {
  //       print("no user found for tha email");
  //     }
  //   }

  //   return user;
  // }

  // TextEditingController _emailController = TextEditingController();
  // TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [fondoazul(Size), icono(), loginform(context)],
        ),
      ),
    );
  }

  SingleChildScrollView loginform(BuildContext context) {
    // TextEditingController _emailController = TextEditingController();
    // TextEditingController _passwordController = TextEditingController();
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 250),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 30),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(23),
              //efecto de sombra
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 15,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  'Login',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Container(
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      children: [
                        TextFormField(
                          //   controller: _emailController,
                          autocorrect: false,
                          decoration: InputDecorations.inputDecoration(
                              hintext: "ejemplo@gmail.com",
                              labeltext: "correo electronico",
                              icono: const Icon(Icons.alternate_email_rounded)),
                          validator: (value) {
                            String pattern =
                                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                            RegExp regExp = new RegExp(pattern);
                            return regExp.hasMatch(value ?? '')
                                ? null
                                : "el valor ingresado no es un correo";
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          //    controller: _passwordController,
                          autocorrect: false,
                          obscureText: true,
                          decoration: InputDecorations.inputDecoration(
                              hintext: "*********",
                              labeltext: "contraseña",
                              icono: const Icon(Icons.lock_outlined)),
                          validator: (value) {
                            return (value != null && value.length >= 8)
                                ? null
                                : "la contraseña debe ser mayor o igual a 8 caracteres";
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          disabledColor: Colors.grey,
                          color: Colors.blue,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 80, vertical: 15),
                            child: const Text(
                              "Ingresar",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          onPressed: () async {
                            // User? user = await loginUsingEmailPassword(
                            //     email: _emailController.text,
                            //     password: _passwordController.text,
                            //     context: context);
                            // print(user);
                            // if (user != null) {
                            //   Navigator.of(context).pushReplacement(
                            //       MaterialPageRoute(
                            //           builder: (context) => principals()));
                            // }
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => principals()),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            "Registrar Cuenta",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  SafeArea icono() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 70),
        width: double.infinity,
        child: const Icon(
          Icons.audiotrack,
          color: Colors.white,
          size: 80,
        ),
      ),
    );
  }

  Container fondoazul(Size Size) {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      height: Size.height * 0.4,
      child: Stack(
        children: [
          Positioned(child: burbuja(), top: 90, left: 20),
          Positioned(child: burbuja(), top: -40, left: -30),
          Positioned(child: burbuja(), top: -15, left: 250),
          Positioned(child: burbuja(), top: 150, left: 290),
          Positioned(child: burbuja(), bottom: -40, left: 120),
        ],
      ),
    );
  }

  Container burbuja() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color.fromRGBO(255, 255, 255, 0.05)),
    );
  }
}
