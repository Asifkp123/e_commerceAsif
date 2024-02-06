
import 'package:e_commerce/constants/my_functions.dart';
import 'package:e_commerce/main.dart';
import 'package:e_commerce/pages/authentication/screens/forget_password.dart';
import 'package:e_commerce/view/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../common/common.dart';
import '../widgets/custom_widget.dart';
import 'fade_animationtest.dart';

class LoginPageNew extends StatefulWidget {
  const LoginPageNew({super.key});

  @override
  State<LoginPageNew> createState() => _LoginPageNewState();
}

class _LoginPageNewState extends State<LoginPageNew> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8ECF4),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FadeInAnimation(
                  delay: 1,
                  child: IconButton(
                      onPressed: () {
                        // GoRouter.of(context)
                        //     .pushNamed(Routers.authenticationpage.name);
                      },
                      icon: const Icon(
                        CupertinoIcons.back,
                        size: 35,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeInAnimation(
                        delay: 1.3,
                        child: Text(
                          "Welcome back! Glad ",
                          style: Common().titelTheme,
                        ),
                      ),
                      FadeInAnimation(
                        delay: 1.6,
                        child: Text(
                          "to see you, Again!",
                          style: Common().titelTheme,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Form(
                    child: Column(
                      children: [
                        FadeInAnimation(
                          delay: 1.9,
                          child: const CustomTextFormField(
                            hinttext: 'Enter your email',
                            obsecuretext: false,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        FadeInAnimation(
                          delay: 2.2,
                          child: TextFormField(
                            obscureText: flag ? true : false,
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(18),
                                hintText: "Enter your password",
                                hintStyle: Common().hinttext,
                                border: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(12)),
                                suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.remove_red_eye_outlined))),
                          ),
                        ),
                        FadeInAnimation(
                          delay: 2.5,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                                onPressed: () {
                                  callNext(ForgetPasswordPage(), context);

                                  // GoRouter.of(context)
                                  //     .pushNamed(Routers.forgetpassword.name);
                                },
                                child: Text(
                                  "Forget Password?",
                                  style: Common().semiboldblack,
                                )),
                          ),
                        ),
                        FadeInAnimation(
                          delay: 2.8,
                          child: CustomElevatedButton(
                            message: "Login",
                            function: () {

                              if (flag) {
                                setState(() {
                                  callNext(MainScreen(), context);
                                  flag = false;
                                });
                              } else {
                                setState(() {
                                  flag = true;
                                });
                              }
                            },
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: Column(
                      children: [
                        FadeInAnimation(
                          delay: 2.2,
                          child: Text(
                            "Or Log with",
                            style: Common().semiboldblack,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        FadeInAnimation(
                          delay: 2.4,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, right: 30, left: 30),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(
                                    "assets/images/facebook_ic (1).svg"),
                                SvgPicture.asset("assets/images/google_ic-1.svg"),
                                // Image.asset("assets/images/Vector.png")
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                FadeInAnimation(
                  delay: 2.8,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Don’t have an account?",
                          style: Common().hinttext,
                        ),
                        TextButton(
                            onPressed: () {
                              // GoRouter.of(context)
                              //     .pushNamed(Routers.signuppage.name);
                            },
                            child: Text(
                              "Register Now",
                              style: Common().mediumTheme,
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
