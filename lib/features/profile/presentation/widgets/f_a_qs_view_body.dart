import 'package:flutter/material.dart';
import 'package:quick_mart_app/constant.dart';
import 'package:quick_mart_app/features/profile/presentation/widgets/custom_pargraph_with_title.dart';

import '../../../../core/utils/styles.dart';

class FAQsViewBody extends StatelessWidget {
  const FAQsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: paddingOfView),
        child: Column(
          children: [
            const CustomPargraphWithTitle(title: qustion1, subtitle: answer1),
            const CustomPargraphWithTitle(title: qustion2, subtitle: answer2),
            const CustomPargraphWithTitle(title: qustion3, subtitle: answer3),
            const CustomPargraphWithTitle(title: qustion4, subtitle: answer4),
            const CustomPargraphWithTitle(title: qustion5, subtitle: answer5),
            SizedBox(height: 40),
            Text(
              'For any query, you can visit our website for Help Center at Quickmart.com',
              style: Styless.textSemiBold16(context),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

const String qustion1 = "Can I cancel my order?";
const String answer1 =
    "Yes only if the order is not dispatched yet. You can contact our customer service department to get your order canceled.";

const String qustion2 = "Will I receive the same product I see in the photo?";
const String answer2 =
    "Actual product color may vary from the images shown. Every monitor or mobile display has a different capability to display colors, and every individual may see these colors differently. In addition, lighting conditions at the time the photo was taken can also affect an image's color.";

const String qustion3 = "How can I recover the forgotten password?";
const String answer3 =
    'If you have forgotten your password, you can recover it from "Login - Forgotten your password?" section. You will receive an e-mail with a link to enter and confirm your new password.';

const String qustion4 = "Is my personal information confidential?";
const String answer4 =
    "Your personal information is confidential. We do not rent, sell, barter or trade email addresses. When you place an order with us, we collect your name, address, telephone number, credit card information and your email address. We use this information to fulfill your order and to communicate with you about your order. All your information is kept confidential and will not be disclosed to anybody unless ordered by government authorities.";

const String qustion5 = "What payment methods can I use to make purchases?";
const String answer5 =
    "We offer the following payment methods: PayPal, VISA, MasterCard and Voucher code, if applicable.";
