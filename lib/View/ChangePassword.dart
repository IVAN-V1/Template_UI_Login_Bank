import 'package:flutter/material.dart';

import 'ChangePass.dart';

class ChangePassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Forgot password', style: TextStyle(color: Colors.black, fontSize: 23)),
      ),

      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[


            Card(
              elevation: 5,
              color: Colors.white,// Ajusta la sombra del card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                // Ajusta el radio del borde del card
              ),

              child:  Column(

                crossAxisAlignment: CrossAxisAlignment.start,

                children: [


                  SizedBox(height: 20),

                  Padding( padding: const EdgeInsets.only(left: 16.0, right: 16.0), // Padding solo en el lado izquierdo

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        Text(
                          'Type a code',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),

                        SizedBox(height: 10),

                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: '8222',
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  ),
                                  prefixIcon: Icon(Icons.phone, color: Colors.grey),
                                ),
                                keyboardType: TextInputType.phone,
                              ),
                            ),
                            SizedBox(width: 10), // Espacio entre el campo de texto y el botón
                            ElevatedButton(
                              onPressed: () {


                              },
                              child: Text(
                                'Resend',
                                style: TextStyle(color: Colors.white), // Color del texto
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.indigo[900],
                                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ],
                        ),


                        SizedBox(height: 20),

                        Text(
                          'We texted you a code to verify your phone number (+84) 0398829xxx',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),


                        SizedBox(height: 20),



                        Text(
                          "This code will expired 10 minutes after this message. If you don't get a message.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),

                        SizedBox(height: 20),


                        SizedBox(
                          width: double.infinity, // El botón ocupará todo el ancho disponible
                          child:

                          ElevatedButton(
                            onPressed: () {

                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ChangePasswordScreen()),
                              );


                            },
                            child: Text(
                              'Change password',
                              style: TextStyle(color: Colors.white), // Color del texto
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.indigo[900],
                              padding: EdgeInsets.symmetric(vertical: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),


                      ],

                    ),

                  ),

                  SizedBox(height: 10),




                ],

              ),

            ),





          ],
        ),
      ),


    );
  }
}