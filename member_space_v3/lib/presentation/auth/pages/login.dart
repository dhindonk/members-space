import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:members_space_v3/presentation/home/home.dart';

import '../../../core/components/buttons.dart';
import '../../../core/core.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 200,
                width: fullWidth(context),
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(150),
                    bottomRight: Radius.circular(150),
                  ),
                ),
              ),
              Positioned(
                bottom: -45,
                left: (fullWidth(context) - 100) / 2,
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.white,
                      width: 4,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: 100,
                  height: 100,
                  child: Image.asset(
                    Assets.logo.logoWhitePng.path,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: [
                const SpaceHeight(12),
                Text(
                  'Welcome Back👋',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
                const SpaceHeight(30),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: AppColors.black.withOpacity(0.8),
                        ),
                      ),
                      const SpaceHeight(5),
                      _emailForm(),
                      const SpaceHeight(25),
                      Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: AppColors.black.withOpacity(0.8),
                        ),
                      ),
                      const SpaceHeight(5),
                      _passwordForm(),
                    ],
                  ),
                ),
                const SpaceHeight(50),
                Column(children: [
                  Button.filled(
                    onPressed: () {
                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => Home(),
                      //   ),
                      // );
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.green,
                          content: Text(
                            'Login Berhasil',
                            style: TextStyle(
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      );
                    },
                    label: 'Login',
                    color: AppColors.primary,
                  )
                ]),
                const SpaceHeight(25),
                Container(
                  height: 2,
                  width: fullWidth(context) / 2,
                  color: AppColors.line,
                ),
                const SpaceHeight(40),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextFormField _emailForm() {
    return TextFormField(
      decoration: customDecoration(
        prefixIcon: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.email,
            color: AppColors.grey,
          ),
        ),
        hintText: 'Email',
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }

  TextFormField _passwordForm() {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: customDecoration(
        prefixIcon: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.password,
            color: AppColors.grey,
          ),
        ),
        hintText: 'Password',
      ),
      keyboardType: TextInputType.visiblePassword,
    );
  }
}
