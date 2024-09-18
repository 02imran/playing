

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod/customized_widget/custom_textformform_field.dart';
import 'package:river_pod/customized_widget/primary_button.dart';
import 'package:river_pod/main_screen/Todo/todo.dart';
import 'package:river_pod/main_screen/login_screen/login_provider/login_provider.dart';

  final phoneNumberTextFieldControllerProvider = Provider<TextEditingController>((ref) {
  final controller = TextEditingController();

  controller.dispose();
  return controller;
});

class LoginScreen extends ConsumerWidget {
   LoginScreen({super.key});



  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var phoneNumberController = ref.read(phoneNumberTextFieldControllerProvider);
    final loginState = ref.watch(loginProvider);
    return Scaffold(
      appBar: AppBar(),
      body: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          // key: controller.loginKey,
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height:30),
                  // Center(
                  //     child: Image.asset(
                  //   AssetConfig.merchantLoginIcon,
                  //   height: getProportionateScreenHeight(100),
                  // )),

                  const SizedBox(height: 20),
                  const Text("Merchant Login"),

                  const SizedBox(height: 15),
                  const Text("Merchant Number"),

                  const SizedBox(height: 55,),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Merchant Mobile number",
                  )),

                  const SizedBox(height: 10),
                  CustomTextField(
                    controller: phoneNumberController,
                    hintText: "Given Mobile",
                    inputType: TextInputType.phone,
                    maxLength: 11,
                    formatter: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      // return controller.validatePhone(value!);
                    },
                    onChanged: (value) {
                      // controller.phone.value = value;
                    },
                  ),

                  // const Spacer(),
                  SizedBox(height: 25),
                  Align( 
                    alignment: Alignment.bottomCenter,
                    child: PrimaryButton(
                        btnText: "Next",
                        onPressed: () {
                          // ref.watch(loginProvider.notifier).checkLogin(context, loginKey, phone, mounted)
                          // controller.checkLogin(context);
                        }),
                  ),
                  SizedBox(height: 20),

                  // TextButton(
                  //   onPressed: () {
                  //     Navigator.push(context, MaterialPageRoute(builder: (builder) => Home()));
                  //   },
                  //   child: Text(StringConfig.forgotYourPin,
                  //       style: textSize16.copyWith(
                  //           color: ColorConfig.primaryColor)),
                  // ),

                  // PrimaryButton(isPrimaryButton: false, btnText: "PINNNNNNNNNNNN", onPressed: (){
                  //   context.pushReplacement(RouterPath.enterValidatePinScreenFromOtpPath);
                  // }),
                ],
              ),
            ),
          )),
        ),
    );
  }
}