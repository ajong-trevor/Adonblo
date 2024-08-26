import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custom_text_form_field.dart';
import '../utils/form_validators.dart';
import '../utils//app_colors.dart';
import '../widgets/custom_bottom.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    final nameEditingController = TextEditingController();
    final emailEditingController = TextEditingController();
    final passwordEditingController = TextEditingController();

    final formValidator = FormValidators();

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Hello, Let us get you started',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Username',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    CustomTextFormField(
                      textInputType: TextInputType.text,
                      isPasswordField: false,
                      textEditingController: nameEditingController,
                      validator: formValidator.nameValidation,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Email Address',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    CustomTextFormField(
                      textInputType: TextInputType.emailAddress,
                      isPasswordField: false,
                      textEditingController: emailEditingController,
                      validator: formValidator.emailValidation,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    CustomTextFormField(
                      textInputType: TextInputType.visiblePassword,
                      isPasswordField: true,
                      textEditingController: passwordEditingController,
                      validator: formValidator.passwordValidation,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
                child: CustomButton(
                  pressed: () => Get.offAllNamed('/bottomNavigation'),
                  text: 'Sign up',
                  color: AppColors.primaryColor,
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'Or',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 5.0),
                child: CustomButton(
                  pressed: () {},
                  text: 'Continue with Google',
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
