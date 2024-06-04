import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vital_child/client/01_authorization/1_login/login.dart';
import 'package:vital_child/utils/constants/colors.dart';
import 'package:vital_child/utils/constants/sizes.dart';
import 'package:vital_child/utils/constants/text_strings.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key, this.email});

  final String? email;

  @override
  Widget build(BuildContext context) {
    // content
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(VcSizes.defaultSpace),
          child: Column(
            children: [
              // image
              const SizedBox(height: 100),

              const SizedBox(height: VcSizes.spaceBtnSections),

              // title and subtitle
              Text(
                VcTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: VcSizes.spaceBtnItems_1,
              ),

              Text(
                email ?? '',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: VcSizes.spaceBtnItems_1,
              ),

              Text(
                VcTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: VcSizes.spaceBtnSections,
              ),

              // button
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  child: Text(
                    VcTexts.tContinue,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () => Get.offAll(() => const LoginScreen()),
                ),
              ),

              const SizedBox(
                height: VcSizes.spaceBtnItems_1,
              ),

              SizedBox(
                width: double.infinity,
                child: TextButton(
                  child: Text(
                    VcTexts.resendEmail,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontSize: 20, color: VcColors.primary),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
