import 'package:flutter/material.dart';
import 'package:quick_mart_app/features/profile/presentation/widgets/custom_pargraph_with_title.dart';

import '../../../../constant.dart';
import '../../../../core/utils/styles.dart';

class PrivacPolicyViewBody extends StatelessWidget {
  const PrivacPolicyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: paddingOfView),
        child: Column(
          children: [
            SizedBox(
                width: double.infinity,
                child: Text('Our Policy', style: Styless.textBold24(context))),
            Text(policyDiscription, style: Styless.textMedium14(context)),
            CustomPargraphWithTitle(
              title: '1. Information Collection:',
              subtitle: policyInfo1,
            ),
            CustomPargraphWithTitle(
              title: '2. Information Use:',
              subtitle: policyInfo2,
            ),
            CustomPargraphWithTitle(
              title: '3. Information Sharing:',
              subtitle: policyInfo3,
            ),
            CustomPargraphWithTitle(
              title: '4. Data Security:',
              subtitle: policyInfo4,
            ),
            CustomPargraphWithTitle(
              title: '4. Data Security:',
              subtitle: policyInfo5,
            ),
            CustomPargraphWithTitle(
              title: "6. Children's Privacy:",
              subtitle: policyInfo6,
            ),
            CustomPargraphWithTitle(
              title: '7. Updates to the Privacy Policy:',
              subtitle: policyInfo7,
            ),
            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}

const String policyDiscription =
    "At QuickMart, we are committed to protecting the privacy and security of our users' personal information. This Privacy Policy outlines how we collect, use, disclose, and safeguard the information obtained through our e-commerce app. By using QuickMart, you consent to the practices described in this policy.";
const String policyInfo1 =
    " - Personal Information: We may collect personal information such as name, address, email, and phone number when you create an account, make a purchase, or interact with our services.\n - Transaction Details: We collect information related to your purchases, including order history, payment method, and shipping details.\n - Usage Data: We may collect data on how you interact with our app, such as browsing activity, search queries, and preferences.";
const String policyInfo2 =
    " - Provide Services: We use the collected information to process orders, deliver products, and provide customer support.\n - Personalization: We may use your information to personalize your shopping experience, recommend products, and display targeted advertisements.\n - Communication: We may use your contact information to send important updates, promotional offers, and newsletters. You can opt-out of these communications at any time.";
const String policyInfo3 =
    " - Third-Party Service Providers: We may share your information with trusted third-party service providers who assist us in operating our app, fulfilling orders, and improving our services.\n - Legal Compliance: We may disclose personal information if required by law or in response to a valid legal request from authorities.";
const String policyInfo4 =
    " - We implement appropriate security measures to protect your information from unauthorized access, alteration, disclosure, or destruction.\n - However, please note that no data transmission over the internet or electronic storage is 100% secure. We cannot guarantee absolute security of your information.";
const String policyInfo5 =
    " - Access and Update: You have the right to access, correct, or update your personal information stored in our app.\n - Data Retention: We retain your personal information as long as necessary to provide our services and comply with legal obligations.";
const String policyInfo6 =
    " - QuickMart is not intended for children under the age of 13. We do not knowingly collect or solicit personal information from children.";
const String policyInfo7 =
    " - We reserve the right to update this Privacy Policy from time to time. Any changes will be posted on our app, and the revised policy will be effective upon posting.";
