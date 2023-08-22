import 'package:flutter/material.dart';
import 'package:todo_app/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  final border = const OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
      style: BorderStyle.solid,
      width: 1,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Text(
                      'Welcome Onboard!',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Let's help you to meet your Tasks and Goals",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          // Full Name
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter Your Full Name',
                              hintStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff5B5B5B),
                              ),
                              prefixIcon: const Icon(Icons.person),
                              prefixIconColor: Colors.black54,
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: border,
                              focusedBorder: border,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),

                          // Email
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter Your Email',
                              hintStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff5B5B5B),
                              ),
                              prefixIcon: const Icon(Icons.email),
                              prefixIconColor: Colors.black54,
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: border,
                              focusedBorder: border,
                            ),
                          ),

                          const SizedBox(
                            height: 25,
                          ),

                          // Password
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter Your Password',
                              hintStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff5B5B5B),
                              ),
                              prefixIcon: const Icon(Icons.lock),
                              prefixIconColor: Colors.black54,
                              suffixIcon: const Icon(Icons.remove_red_eye),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: border,
                              focusedBorder: border,
                            ),
                          ),

                          const SizedBox(
                            height: 25,
                          ),

                          const SizedBox(
                            height: 100,
                          ),

                          // Sign Up Button

                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const LoginScreen();
                                  },
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Theme.of(context).colorScheme.primary,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                minimumSize: const Size(double.infinity, 50)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.arrow_forward, color: Colors.white),
                              ],
                            ),
                          ),

                          const SizedBox(
                            height: 15,
                          ),
                          RichText(
                            text: const TextSpan(
                              text: 'Already have an account? ',
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Sign In',
                                  style: TextStyle(
                                    color: Color(0xFF50C2C9),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset('assets/images/shape.png'),
            )
          ],
        ),
      ),
    );
  }
}
