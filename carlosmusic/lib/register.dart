import 'package:carlosmusic/principals.dart';
import 'package:flutter/material.dart';

import 'decorationlogin.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
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
}

SingleChildScrollView loginform(BuildContext context) {
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
                'Registro',
                style: Theme.of(context).textTheme.headline4,
              ),
              Container(
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      TextFormField(
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
                            "Registrar",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        onPressed: () async {
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
        Icons.person_add,
        color: Colors.white,
        size: 100,
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
