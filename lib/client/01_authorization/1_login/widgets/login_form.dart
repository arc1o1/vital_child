import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vital_child/client/01_authorization/1_login/controller/login_controller.dart';
import 'package:vital_child/client/01_authorization/2_signup/signup.dart';
import 'package:vital_child/client/02_home/1_home/home.dart';
import 'package:vital_child/utils/constants/colors.dart';
import 'package:vital_child/utils/constants/sizes.dart';
import 'package:vital_child/utils/constants/text_strings.dart';
import 'package:vital_child/utils/validators/validator.dart';

class VcLoginForm extends StatelessWidget {
  const VcLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // controller instantiation
    final controller = Get.put(LoginController());

    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: VcSizes.spaceBtnItems_1),
        child: Column(
          children: [
            // username
            TextFormField(
              validator: (value) => VcValidator.validateEmail(value),
              decoration: InputDecoration(
                labelText: VcTexts.username,
                labelStyle: Theme.of(context).textTheme.bodyMedium,
                hintStyle: Theme.of(context).textTheme.labelSmall,
              ),
            ),

            const SizedBox(height: VcSizes.spaceBtnInputFields),

            // password
            Obx(
              () => TextFormField(
                controller: controller.password,
                validator: (value) =>
                    VcValidator.validateEmptyText('Password', value),
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => controller.hidePassword.value =
                        !controller.hidePassword.value,
                    icon: Icon(
                      controller.hidePassword.value
                          ? Icons.visibility_off_rounded
                          : Icons.visibility_rounded,
                      size: 19,
                    ),
                  ),
                  labelText: VcTexts.password,
                  hintText: 'Enter your password',
                  labelStyle: Theme.of(context).textTheme.bodyMedium,
                  hintStyle: Theme.of(context).textTheme.labelSmall,
                ),
              ),
            ),

            const SizedBox(height: VcSizes.spaceBtnItems_1 * 3),

            // sign in button
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const HomeScreen()),
                child: Text(
                  VcTexts.signIn,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const SizedBox(height: VcSizes.spaceBtnItems_1 * 3),

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
                  onTap: () => Get.to(() => const SignupScreen()),
                  child: Text(
                    "SignUp Here",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontSize: 16, color: VcColors.primary),
                  ),
                )
              ],
            ),

            const SizedBox(height: VcSizes.spaceBtnItems_2),
          ],
        ),
      ),
    );
  }
}
