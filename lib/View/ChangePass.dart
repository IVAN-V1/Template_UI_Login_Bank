import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatefulWidget {
  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

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
        title: Text('Change password', style: TextStyle(color: Colors.black)),
      ),
      body:  Padding(
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
                          'Type your new password',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          obscureText: _obscurePassword,
                          decoration: InputDecoration(
                            hintText: '••••••••••••',
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscurePassword ? Icons.visibility_off : Icons.visibility,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscurePassword = !_obscurePassword;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Confirm password',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          obscureText: _obscureConfirmPassword,
                          decoration: InputDecoration(
                            hintText: '••••••••••••',
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureConfirmPassword ? Icons.visibility_off : Icons.visibility,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscureConfirmPassword = !_obscureConfirmPassword;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 30),


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