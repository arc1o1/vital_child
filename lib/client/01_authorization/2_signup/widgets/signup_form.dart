import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vital_child/client/01_authorization/2_signup/controller/signup_controller.dart';
import 'package:vital_child/client/01_authorization/2_signup/verify_email.dart';
import 'package:vital_child/utils/constants/colors.dart';
import 'package:vital_child/utils/constants/sizes.dart';
import 'package:vital_child/utils/constants/text_strings.dart';
import 'package:vital_child/utils/validators/validator.dart';

class VcSignUpForm extends StatelessWidget {
  const VcSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // instantiate controller
    final controller = Get.put(SignupController());

    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: VcSizes.spaceBtnItems_1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // username
            TextFormField(
              controller: controller.userName,
              validator: (value) =>
                  VcValidator.validateEmptyText("Username", value),
              expands: false,
              decoration: const InputDecoration(
                labelText: VcTexts.username,
              ),
            ),

            const SizedBox(height: VcSizes.spaceBtnInputFields),

            // email
            TextFormField(
              controller: controller.email,
              validator: (value) => VcValidator.validateEmail(value),
              decoration: const InputDecoration(
                labelText: VcTexts.email,
              ),
            ),

            const SizedBox(height: VcSizes.spaceBtnInputFields),

            // phone number
            TextFormField(
              controller: controller.phoneNumber,
              validator: (value) => VcValidator.validatePhoneNumber(value),
              decoration: const InputDecoration(
                labelText: VcTexts.phoneNo,
              ),
            ),

            const SizedBox(height: VcSizes.spaceBtnInputFields),

            // password
            Obx(
              () => TextFormField(
                controller: controller.password,
                validator: (value) => VcValidator.validatePassword(value),
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                  labelText: VcTexts.password,
                  suffixIcon: IconButton(
                      onPressed: () => controller.hidePassword.value =
                          !controller.hidePassword.value,
                      icon: Icon(
                        controller.hidePassword.value
                            ? Icons.visibility_off_rounded
                            : Icons.visibility_rounded,
                        size: 19,
                      )),
                ),
              ),
            ),

            const SizedBox(height: VcSizes.spaceBtnItems_2 * 4),

            // sign up button
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const VerifyEmail()),
                child: Text(
                  VcTexts.createAccount,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const SizedBox(height: VcSizes.spaceBtnItems_2 * 4),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Don't Have an Account Yet?",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(fontSize: 16),
                ),

                // inkwell button
                InkWell(
                  onTap: () => Get.back(),
                  child: Text(
                    "SignIn Here",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontSize: 16, color: VcColors.primary),
                  ),
                )
              ],
            ),

            const SizedBox(height: VcSizes.spaceBtnSections),
          ],
        ),
      ),
    );
  }
}
