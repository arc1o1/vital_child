import 'package:flutter/material.dart';
import 'package:vital_child/client/01_authorization/2_signup/widgets/signup_form.dart';
import 'package:vital_child/utils/constants/colors.dart';
import 'package:vital_child/utils/constants/sizes.dart';
import 'package:vital_child/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(VcSizes.defaultSpace),
          child: Column(
            children: [
              // title
              Text(
                VcTexts.signupTitle,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 30,
                      color: VcColors.primary,
                    ),
              ),

              const SizedBox(height: VcSizes.spaceBtnSections),

              // form
              const VcSignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}
