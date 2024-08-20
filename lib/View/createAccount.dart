import 'package:flutter/material.dart';


class account extends StatefulWidget {

  @override
  State<account> createState() => _accountState();
}


class _accountState extends State<account> {
  bool _agreeToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.indigo[900],
      ),

      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.indigo[900],
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(40),
                ),
              ),

              padding: EdgeInsets.only(top: 0, left: 20, right: 20),
              child: Row(
                children: [

                  Icon(Icons.arrow_back, color: Colors.white),

                  SizedBox(width: 10),

                  Text(

                    'Sign up',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),


                ],
              ),
            ),

            SizedBox(height: 30),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0), // Padding solo en el lado izquierdo
                  child: Text(
                    'Welcome to us',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo[900],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0), // Padding solo en el lado izquierdo
                  child: Text(
                    'Hello there, create new account',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Image.asset(
                    'assets/images/Illustration2.png', // Ruta de la imagen del candado
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [

                  TextField(
                    decoration: InputDecoration(
                      hintText: 'copicreativedesign',
                      hintStyle: TextStyle(color: Colors.grey[600]), // Asegura que el hint text no sea negro
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  TextField(
                    decoration: InputDecoration(
                      hintText: '(+84) 35224802',
                      hintStyle: TextStyle(color: Colors.grey[600]), // Asegura que el hint text no sea negro
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),


                  SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey[600]), // Asegura que el hint text no sea negro
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),



                ],
              ),
            ),

            SizedBox(height: 16),

            Center(
              child: Column(
                children: [


                  CheckboxListTile(
                    title: Text(
                      'By creating an account your agree to our Term and Conditions',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                    value: _agreeToTerms,
                    onChanged: (bool? value) {
                      setState(() {
                        _agreeToTerms = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.blue,
                    checkColor: Colors.deepPurple,
                  ),

                  SizedBox(height: 16),


                  Padding( padding: const EdgeInsets.only(left: 16.0, right: 16.0), // Padding solo en el lado izquierdo

                    child: SizedBox(
                      width: double.infinity, // El botón ocupará todo el ancho disponible
                      child:

                      ElevatedButton(
                        onPressed: () {

                        },
                        child: Text(
                          'Sign Up',
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

                  ),



                  SizedBox(height: 16),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(color: Colors.grey[600]),
                      ),

                      GestureDetector(
                        onTap: () {

                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            color: Colors.indigo[900],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),


                ],
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
