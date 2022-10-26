import 'package:flutter/material.dart';
import 'package:login_app_lecture_1/resources/values/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _hidePass = true;
  final _nameController = TextEditingController();
  final _passController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(94, 20, 28, 11),
                child: Image(
                  image: AssetImage('assets/images/welcome_screen_img.png'),
                ),
              ),
              Text(
                'Welcome Back',
                style: Theme.of(context).textTheme.headline1,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                child: TextFormField(
                  validator: usernameValidator,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person), hintText: 'Username'),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                child: TextFormField(
                  controller: _passController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _hidePass = !_hidePass;
                        });
                      },
                      icon: Icon(
                          _hidePass ? Icons.visibility : Icons.visibility_off),
                    ),
                  ),
                  maxLength: 6,
                  obscureText: _hidePass,
                  validator: passwordValidator,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  children: [
                    const Checkbox(
                      value: true,
                      onChanged: (null),
                    ),
                    Text(
                      'Remember me',
                      style: Theme.of(context).textTheme.bodyText1,
                    )
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: _submitForm,
                child: const Text('Login'),
              )
            ]),
          ),
        ),
      ),
    );
  }

  String? usernameValidator(String? username) {
    if (username!.isEmpty) {
      return 'Username is required';
    } else if (username != 'admin') {
      return 'Username not correct';
    } else {
      return null;
    }
  }

  String? passwordValidator(String? pass) {
    if (pass!.isEmpty) {
      return 'Password is required';
    } else if (pass.length < 6) {
      return 'Pass to short';
    } else if (pass != '123456') {
      return 'Password not correct';
    } else {
      return null;
    }
  }

  void _showMassage({required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.red,
        content: Text(
          message,
          style: Theme.of(context).textTheme.bodyText2,
        )));
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    } else {
      _showMassage(message: 'Username or login not correct');
    }
  }
}
