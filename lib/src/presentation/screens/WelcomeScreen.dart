import 'package:flutter/material.dart';

checkIfAuthenticated() async {
  await Future.delayed(const Duration(
      seconds: 5)); // could be a long running task, like a fetch from keychain
  return true;
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // checkIfAuthenticated().then((success) {
    //   if (success) {
    //     print("Entrou");
    //     Navigator.pushReplacementNamed(context, '/home');
    //   } else {
    //     Navigator.pushReplacementNamed(context, '/login');
    //   }
    // });

    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              // Expanded(
              //     flex: 4, child: Image.asset('assets/images/logo.png')),
              const Expanded(
                flex: 3,
                child: Text(
                  'Keep Safe',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.black87,
                  ),
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/register');
                        },
                        child: const Text('Register'),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: const Text('Sign-in'),
                      )
                    ],
                  ))
            ],
          )),
    ));
  }
}
