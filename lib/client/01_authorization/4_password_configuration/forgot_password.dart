import 'package:flutter/material.dart';
import 'package:vital_child/utils/constants/sizes.dart';
import 'package:vital_child/utils/constants/text_strings.dart';
import 'package:vital_child/utils/validators/validator.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    // saffold
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(VcSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // headings
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  VcTexts.forgotPasswordTitle,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: VcSizes.spaceBtnItems_1),
                Text(
                  VcTexts.forgotPasswordSubtitle,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ],
            ),

            const SizedBox(height: VcSizes.spaceBtnSections * 2),

            // textfield
            Form(
              child: TextFormField(
                validator: VcValidator.validateEmail,
                decoration: const InputDecoration(
                  labelText: VcTexts.email,
                  prefixIcon: Icon(Icons.email_rounded),
                ),
              ),
            ),

            const SizedBox(height: VcSizes.spaceBtnSections),

            // submit button
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Submit"),
              ),
            ),

            const SizedBox(height: VcSizes.spaceBtnItems_1),
          ],
        ),
      ),
    );
  }
}
