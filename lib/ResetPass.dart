import 'package:flutter/material.dart';
import 'Login/Login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ResetPass extends StatelessWidget {
  const ResetPass({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    return Scaffold(
      backgroundColor: const Color(0xff3a57e8),
      body:SizedBox(
        height:MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.width,
        child:
        Stack(
          alignment:Alignment.topLeft,
          children: [
            Container(
              alignment:Alignment.center,
              margin:const EdgeInsets.all(0),
              padding:const EdgeInsets.all(0),
              width:MediaQuery.of(context).size.width,
              height:MediaQuery.of(context).size.height * 0.5,
              decoration: const BoxDecoration(
                color:Color(0x00ffffff),
                shape:BoxShape.rectangle,
                borderRadius:BorderRadius.zero,
              ),
              child:
              Container(
                height:100,
                width:100,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child:Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiZc_T9ZMJKST-5bqf21Uhc22dw1XVfdIAAg&usqp=CAU",
                    fit:BoxFit.fill),
              ),
            ),
            Align(
              alignment:Alignment.bottomCenter,
              child:Container(
                margin:const EdgeInsets.all(0),
                padding:const EdgeInsets.all(0),
                width:MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  color:const Color(0xffffffff),
                  shape:BoxShape.rectangle,
                  borderRadius:const BorderRadius.only(topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
                  border:Border.all(color:const Color(0x4d9e9e9e),width:1),
                ),
                child:
                Padding(
                  padding:const EdgeInsets.all(16),
                  child:
                  Column(
                    mainAxisAlignment:MainAxisAlignment.start,
                    crossAxisAlignment:CrossAxisAlignment.start,
                    mainAxisSize:MainAxisSize.max,
                    children: [
                      const Text(
                        "Restablecer contraseña",
                        textAlign: TextAlign.start,
                        overflow:TextOverflow.clip,
                        style:TextStyle(
                          fontWeight:FontWeight.w700,
                          fontStyle:FontStyle.normal,
                          fontSize:20,
                          color:Color(0xff000000),
                        ),
                      ),
                      const Padding(
                        padding:EdgeInsets.fromLTRB(0, 16, 0, 0),
                        child:Text(
                          "Enter your email for the verification process. We will send 4 digits code to your email.",
                          textAlign: TextAlign.start,
                          overflow:TextOverflow.clip,
                          style:TextStyle(
                            fontWeight:FontWeight.w400,
                            fontStyle:FontStyle.normal,
                            fontSize:14,
                            color:Color(0xff615f5f),
                          ),
                        ),
                      ),
                      const Padding(
                        padding:EdgeInsets.fromLTRB(0, 16, 0, 0),
                        child:Text(
                          "Email",
                          textAlign: TextAlign.start,
                          overflow:TextOverflow.clip,
                          style:TextStyle(
                            fontWeight:FontWeight.w700,
                            fontStyle:FontStyle.normal,
                            fontSize:16,
                            color:Color(0xff000000),
                          ),
                        ),
                      ),
                      Padding(
                        padding:const EdgeInsets.fromLTRB(0, 16, 0, 0),
                        child:TextField(
                          controller:emailController,
                          obscureText:false,
                          textAlign:TextAlign.start,
                          maxLines:1,
                          style:const TextStyle(
                            fontWeight:FontWeight.w400,
                            fontStyle:FontStyle.normal,
                            fontSize:14,
                            color:Color(0xff000000),
                          ),
                          decoration:InputDecoration(
                            disabledBorder:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(4.0),
                              borderSide:const BorderSide(
                                  color:Color(0xff595757),
                                  width:1
                              ),
                            ),
                            focusedBorder:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(4.0),
                              borderSide:const BorderSide(
                                  color:Color(0xff595757),
                                  width:1
                              ),
                            ),
                            enabledBorder:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(4.0),
                              borderSide:const BorderSide(
                                  color:Color(0xff595757),
                                  width:1
                              ),
                            ),
                            hintText:"Introduzca su email",
                            hintStyle:const TextStyle(
                              fontWeight:FontWeight.w400,
                              fontStyle:FontStyle.normal,
                              fontSize:14,
                              color:Color(0xff000000),
                            ),
                            filled:true,
                            fillColor:const Color(0xffffffff),
                            isDense:false,
                            contentPadding:const EdgeInsets.symmetric(vertical: 8,horizontal:12),
                            suffixIcon:const Icon(Icons.mail,color:Color(0xff212435),size:24),
                          ),
                        ),
                      ),
                    ],),),
              ),),
            Padding(
              padding:EdgeInsets.fromLTRB(30, 50, 0, 0),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                color: Color(0xffffffff),
                iconSize:30,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                },
              ),
            ),
            Padding(
              padding:const EdgeInsets.all(16),
              child:Align(
                alignment:Alignment.bottomCenter,
                child:MaterialButton(
                  onPressed:()async{
                    //Comprobar que existe el email introducido en bbdd:
                    try {
                      //envio correo reestablecimiento de contraseña
                      await FirebaseAuth.instance
                          .sendPasswordResetEmail(email: emailController.text);

                      //Mostrar alerta de correo enviado con exito
                      String mensajeCorreoEnviado="Se ha enviado el correo para reestablecer la contraseña a: "+emailController.text;
                      mostrarAlerta(context, mensajeCorreoEnviado);

                    }
                    on FirebaseAuthException catch(ex){
                        //Email no válido
                        //FLUTTERTOAST
                        Fluttertoast.showToast(
                          msg: "⚠️Introduzca un email válido",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 5,
                          backgroundColor: const Color(0xFFFF0000),
                          textColor: const Color(0xFFFFFFFF),
                          fontSize: 16.0,
                        );
                    }
                  },
                  color:const Color(0xff3a57e8),
                  elevation:0,
                  shape:RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(16.0),
                  ),
                  padding:const EdgeInsets.all(16),
                  textColor:const Color(0xffffffff),
                  height:45,
                  minWidth:MediaQuery.of(context).size.width,
                  child:const Text("Continuar", style: TextStyle( fontSize:14,
                    fontWeight:FontWeight.w700,
                    fontStyle:FontStyle.normal,
                  ),),
                ),
              ),
            ),
          ],),),
    )
    ;}
}
/**
 * Método para mostrar una Alerta con un mensaje personalizado
 * @param mensaje: Mensaje a mostrar en la alerta
 */
mostrarAlerta(BuildContext context, String mensaje) {
  Widget okBoton = TextButton(
    child: Text("OK"),
    onPressed: () {
      //Cerrar ventana de alerta
      Navigator.of(context).pop();
      //Volver a pantalla de login
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    },
  );
  AlertDialog alerta = AlertDialog(
    title: Text("Aviso"),
    content: Text(mensaje),
    actions: [
      okBoton,
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alerta;
    },
  );
}

/*

class ResetPass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            // Regresa a la primera ruta cuando se pulsa.
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}*/
