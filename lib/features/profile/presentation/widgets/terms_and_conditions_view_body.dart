import 'package:flutter/material.dart';

import '../../../../constant.dart';
import '../../../../core/utils/styles.dart';
import 'custom_pargraph_with_title.dart';

class TermsAndConditionsViewBody extends StatelessWidget {
  const TermsAndConditionsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: paddingOfView),
        child: Column(
          children: [
            SizedBox(
                width: double.infinity,
                child: Text('Terms & Conditions',
                    style: Styless.textBold24(context))),
            Text(termsAndConditionsDescription,
                style: Styless.textMedium14(context)),
            CustomPargraphWithTitle(
              title: '1. Account Registration:',
              subtitle: termsInfo1,
            ),
            CustomPargraphWithTitle(
              title: '2. Product Information and Pricing:',
              subtitle: termsInfo2,
            ),
            CustomPargraphWithTitle(
              title: '3. Order Placement and Fulfillment:',
              subtitle: termsInfo3,
            ),
            CustomPargraphWithTitle(
              title: '4. Payment:',
              subtitle: termsInfo4,
            ),
            CustomPargraphWithTitle(
              title: '5. Shipping and Delivery:',
              subtitle: termsInfo5,
            ),
            CustomPargraphWithTitle(
              title: '6. Returns and Refunds:',
              subtitle: termsInfo6,
            ),
            CustomPargraphWithTitle(
              title: '7. Intellectual Property:',
              subtitle: termsInfo7,
            ),
            CustomPargraphWithTitle(
              title: '8. User Conduct:',
              subtitle: termsInfo8,
            ),
            CustomPargraphWithTitle(
              title: '9. Limitation of Liability:',
              subtitle: termsInfo9,
            ),
            CustomPargraphWithTitle(
              title: '10. Governing Law:',
              subtitle: termsInfo10,
            ),
            //Conclusion
            SizedBox(height: 24),
            Text(termsAndConditionsConclusion,
                style: Styless.textMedium14(context)),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

const String termsAndConditionsDescription =
    'Welcome to QuickMart! These Terms and Conditions ("Terms") govern your use of our e-commerce app. By accessing or using QuickMart, you agree to be bound by these Terms. Please read them carefully before proceeding.';
const String termsAndConditionsConclusion =
    "If you have any questions or concerns regarding these Terms and Conditions, please contact our customer support. By using QuickMart, you acknowledge that you have read, understood, and agreed to these Terms and Conditions.";

const String termsInfo1 =
    " - You must create an account to use certain features of QuickMart.\n - You are responsible for providing accurate and up-to-date information during the registration process.\n - You must safeguard your account credentials and notify us immediately of any unauthorized access or use of your account.";
const String termsInfo2 =
    " - QuickMart strives to provide accurate product descriptions, images, and pricing information.\n - We reserve the right to modify product details and prices without prior notice.\n - In the event of an error, we may cancel or refuse orders placed for incorrectly priced products.";
const String termsInfo3 =
    " - By placing an order on QuickMart, you agree to purchase the selected products at the stated price.\n - We reserve the right to accept or reject any order, and we may cancel orders due to product unavailability, pricing errors, or suspected fraudulent activity.\n - Once an order is confirmed, we will make reasonable efforts to fulfill and deliver it in a timely manner.";
const String termsInfo4 =
    " - QuickMart supports various payment methods, including credit/debit cards and online payment platforms.\n - By providing payment information, you represent and warrant that you are authorized to use the chosen payment method.\n - All payments are subject to verification and approval by relevant financial institutions.";
const String termsInfo5 =
    " - QuickMart will make reasonable efforts to ensure timely delivery of products.\n - Shipping times may vary based on factors beyond our control, such as location, weather conditions, or carrier delays.\n - Risk of loss or damage to products passes to you upon delivery.";
const String termsInfo6 =
    " - QuickMart's return and refund policies are outlined separately and govern the process for returning products and seeking refunds.\n - Certain products may be non-returnable or subject to specific conditions.";
const String termsInfo7 =
    " - QuickMart and its content, including logos, trademarks, text, images, and software, are protected by intellectual property rights.\n - You may not use, reproduce, modify, distribute, or display any part of QuickMart without our prior written consent";
const String termsInfo8 =
    " - You agree to use QuickMart in compliance with applicable laws and regulations.\n - You will not engage in any activity that disrupts or interferes with the functioning of QuickMart or infringes upon the rights of others.\n - Any unauthorized use or attempt to access restricted areas or user accounts is strictly prohibited.";
const String termsInfo9 =
    " - QuickMart and its affiliates shall not be liable for any direct, indirect, incidental, consequential, or punitive damages arising from the use or inability to use our app or any products purchased through it.\n - We do not guarantee the accuracy, completeness, or reliability of information provided on QuickMart.";
const String termsInfo10 =
    "    - These Terms shall be governed by and construed in accordance with the laws of [Jurisdiction].\n - Any disputes arising out of or relating to these Terms shall be resolved in the courts of [Jurisdiction].";
