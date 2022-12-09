import 'package:flutter/material.dart';
import 'package:grad_project/controllers/background.dart';
import 'package:grad_project/controllers/button.dart';
import 'package:grad_project/controllers/local_db.dart';
import 'package:grad_project/controllers/text_form.dart';

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          const Background(),
          Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Welcome!',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 4)),
                  const SizedBox(height: 5),
                  const Text(' Make the sun work for you..',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                        color: Colors.white,
                      )),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: width * 0.90,
                    height: height * 0.40,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      color: Colors.white,
                      elevation: 1.5,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            MyTextFormField(
                                height: height,
                                label: 'Key',
                                obsecure: false,
                                validator: (x) {
                                  if (x != LocalDB.key) {
                                    return "Wrong key";
                                  }
                                  return null;
                                }),
                            SizedBox(height: height * 0.04),
                            MyTextFormField(
                                height: height,
                                label: 'Password',
                                obsecure: true,
                                validator: (x) {
                                  if (x != LocalDB.password) {
                                    return "Wrong password";
                                  }
                                  return null;
                                }),
                            SizedBox(height: height * 0.04),
                            MyButton(
                              text: "Login",
                              onPress: () {},
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
