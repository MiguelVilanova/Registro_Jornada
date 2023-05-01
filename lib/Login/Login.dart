/// Descarga de archivos desde Flutterviz, arrastre y suelte una herramienta. Para más detalles, visite https://flutterviz.io/

/// Descarga de archivos desde Flutterviz, arrastre y suelte una herramienta. Para más detalles, visite https://flutterviz.io/

import 'package:flutter/material.dart';
import 'package:registro_jornada/Principal.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../ResetPass.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future<String?> mailRegister(String mail, String pwd) async {
  try {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: mail, password: pwd);
    return null;
  } on FirebaseAuthException catch (ex) {
    return "${ex.code}: ${ex.message}";
  }
}

 mailSignIn(String mail, String pwd, BuildContext context) async {
  try {
         await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: mail, password: pwd);
        Navigator.push(context, MaterialPageRoute(builder: (context) => Principal()));
  } on FirebaseAuthException catch (ex) {
    Fluttertoast.showToast(
        msg: ex.toString(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 5,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
        webBgColor: "red",
        webPosition: "center"
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: const Color(0xffe6e6e6),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.35000000000000003,
            decoration: BoxDecoration(
              color: const Color(0xff3a57e8),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.zero,
              border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 100, 20, 50), //contenedor cajas
            padding: const EdgeInsets.all(0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ///***If you have exported images you must have to copy those images in assets/images directory.
                    const Image(
                      image:
                      NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoSL4WHG5Ypv4e4W58d5Gt4PnBEM_kZQDDhAKjZAOYLBy6V1karPn2SMil6DFkjUUeX7M&usqp=CAU"),
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 70),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Acceso empleados",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            fontSize: 32,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                      child: TextFormField(
                        controller: emailController,
                        obscureText: false,
                        textAlign: TextAlign.left,
                        maxLines: 1,
                        onChanged: (text) {},
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                        decoration: InputDecoration(
                          disabledBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            borderSide:
                                const BorderSide(color: Color(0xff000000), width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            borderSide:
                                const BorderSide(color: Color(0xff000000), width: 1),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            borderSide:
                                const BorderSide(color: Color(0xff000000), width: 1),
                          ),
                          hintText: "Introduzca Email (test)",
                          hintStyle: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 18,
                            color: Color(0xff494646),
                          ),
                          filled: true,
                          fillColor: const Color(0xffffffff),
                          isDense: false,
                          //suffixIcon:const Icon(Icons.mail,color:Color(0xff212435),size:24),
                          contentPadding: const EdgeInsets.all(0),
                        ),
                      ),
                    ),
                    TextField(
                      enableSuggestions: false,
                      autocorrect: false,
                      controller: passwordController,
                      obscureText: true,
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color(0xff000000),
                      ),
                      decoration: InputDecoration(
                        disabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide:
                              const BorderSide(color: Color(0xff000000), width: 1),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide:
                              const BorderSide(color: Color(0xff000000), width: 1),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide:
                              const BorderSide(color: Color(0xff000000), width: 1),
                        ),
                        hintText: "Introduzca Contraseña",
                        hintStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 18,
                          color: Color(0xff494646),
                        ),
                        filled: true,
                        fillColor: const Color(0xffffffff),
                        isDense: false,
                        contentPadding: const EdgeInsets.all(0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 16, 0, 60),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          onTap: () {
                            // Aquí puedes poner la lógica para llevar al usuario a otra pantalla
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const ResetPass()),
                            );
                          },
                          child: const Text(
                            "¿Olvidó su contraseña?",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              fontSize: 18,
                              color: Color(0xff3a57e8),
                            ),
                          ),
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () async {
                          await mailSignIn(emailController.text, passwordController.text, context);
                          passwordController.text = "";
                      },
                      color: const Color(0xff3a57e8),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      padding: const EdgeInsets.all(16),
                      textColor: const Color(0xffffffff),
                      height: 40,
                      minWidth: MediaQuery.of(context).size.width,
                      child: const Text(
                        "Acceso",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
