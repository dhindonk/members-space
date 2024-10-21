
import 'package:flutter/material.dart';

import '../../../core/components/buttons.dart';
import '../../../core/core.dart';

class EmailForm extends StatelessWidget {
  const EmailForm({
    super.key,
    required this.emailController,
    required this.emailLoginFocusNode,
    required this.formKey,
    required this.passwordLoginFocusNode,
  });

  final TextEditingController emailController;
  final FocusNode emailLoginFocusNode;
  final GlobalKey<FormState> formKey;
  final FocusNode passwordLoginFocusNode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailController,
      focusNode: emailLoginFocusNode,
      onTapOutside: (event) {
        emailLoginFocusNode.unfocus();
      },
      onFieldSubmitted: (_) {
        if (!formKey.currentState!.validate()) {
          passwordLoginFocusNode.requestFocus();
        }
      },
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
      validator: (value) {
        if (value!.isEmpty) {
          return "Email harus diisi!!";
        }
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return "Email wajib pakai @****";
        }
        return null;
      },
    );
  }
}
