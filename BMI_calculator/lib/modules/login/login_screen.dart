import 'package:bmi_calculator/shared/components/components.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Login",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  const SizedBox(height: 50),
                  defaultFormField(
                    label: 'Email Address',
                    prefix: Icons.email_outlined,
                    controller: emailController,
                    validate: (String? value){
                      if(value!.isEmpty){
                        return 'Email address must not be empty';
                      }
              //        return null;
                    },
                  ),
                  const SizedBox(height: 10),

                 defaultFormField(
                  label: 'Pasword',
                  prefix: Icons.lock,
                  controller: passwordController,
                  suffix: isPassword ? Icons.visibility: Icons.visibility_off,
                  isPassword: isPassword,
                  onSuffixPress: () {
                    setState(() {
                      isPassword = !isPassword;
                    });
                  },
                  validate: (String? value){
                    if(value!.isEmpty){
                      return 'Email address must not be empty';
                    }
                    return null;
                  },
                ),
                  const SizedBox(height: 20),
                  defaultButton(
                    text: 'Login',
                    function: () {
                      if (formKey.currentState!.validate()) {
                        print(emailController.text);
                        print(passwordController.text);
                      }
                    },
                    isUpperCase: false,
                    radius: 10,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have an account? '),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Register now',
                            style: TextStyle(color: Colors.red)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
