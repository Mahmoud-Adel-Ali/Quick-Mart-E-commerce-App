import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:quick_mart_app/core/app/widgets/custom_button.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/styles/styles.dart';

class EmailVerificationForm extends StatelessWidget {
  const EmailVerificationForm(
      {super.key, required this.onCompleted, required this.onTapProceed});
  final void Function(String)? onCompleted;
  final dynamic Function()? onTapProceed;
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: Styless.textSemiBold16(context),
      decoration: BoxDecoration(
        border: Border.all(color: context.color.grey150),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: context.color.blue),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: context.color.cyan),
      borderRadius: BorderRadius.circular(8),
    );

    return Column(
      children: [
        Pinput(
          length: 6,
          defaultPinTheme: defaultPinTheme,
          focusedPinTheme: focusedPinTheme,
          submittedPinTheme: submittedPinTheme,
          pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
          showCursor: true,
          onCompleted: (pin) {},
        ),
        const SizedBox(height: 10),
        TextButton(
          onPressed: () {},
          child: Text(
            'Resend Code',
            style: Styless.textSemiBold14(context)
                .copyWith(color: context.color.cyan),
          ),
        ),
        const SizedBox(height: 50),
        CustomButton(onPressed: () {}, text: 'Proceed'),
      ],
    );
  }
}
