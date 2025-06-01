import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/checkout_cubit/checkout_cubit.dart';
import 'widgets/checkout_app_bar.dart';
import 'widgets/checkout_view_body.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CheckoutCubit>(
      create: (context) => CheckoutCubit(),
      child: Scaffold(
        appBar: checkoutAppBar(context),
        body: CheckoutViewBody(),
      ),
    );
  }
}
