import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      'Welcome Back!',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Image.asset('assets/images/signIn.png', height: 300),
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
                            height: 20,
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
                            height: 20,
                          ),

                          const SizedBox(
                            height: 10,
                          ),

                          // Sign Up Button

                          ElevatedButton(
                            onPressed: () {},
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
                                  'Sign In',
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
                              text: "Don't have an account?",
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Sign Up',
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
