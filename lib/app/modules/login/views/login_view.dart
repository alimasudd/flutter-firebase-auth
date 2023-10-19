import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              //email
              const SizedBox(height: 150,),
              const SizedBox(
                height: 30,
                child: Text(
                  'Email',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 45,
                child: TextFormField(
                  controller: controller.email,
                  style: const TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    fillColor: Colors.grey.shade600,
                    filled: false,
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ),
                ),
              ),

              //password
              const SizedBox(height: 20,),
              const SizedBox(
                height: 30,
                child: Text(
                  'Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 45,
                child: Obx(() {
                  return TextFormField(
                    controller: controller.password,
                    obscureText: controller.isObscure.value,
                    style: const TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          icon: Icon(
                              controller.isObscure.isTrue  ? Icons.visibility : Icons.visibility_off),
                          onPressed: () {
                            controller.isObscure.value = !controller.isObscure.value;
                          }),
                      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      fillColor: Colors.grey.shade600,
                      filled: false,
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 15,),
              Container(
                  alignment:AlignmentDirectional.centerEnd ,
                  child: InkWell(
                      // onTap: ()=> Get.to(const LupaPaswordView()),
                      child: const Text('Lupa Password ?'))),

              //button
              const SizedBox(height: 50,),
              ElevatedButton(onPressed: () {
                // controller.validation();
              },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade800,
                    fixedSize: const Size(250, 40),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),child: const Text("Login", style: TextStyle(color: Colors.white),),),

              //divider
              const SizedBox(height: 50,),
              const Row(
                children: [
                  Expanded(
                    child: Divider(thickness: 2),
                  ),
                  SizedBox(width: 20),
                  Text("atau"),
                  SizedBox(width: 20),
                  Expanded(
                    child: Divider(thickness: 2),
                  ),
                ],
              ),

              // social media
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: ()=> controller.signInWithGoogle(),
                    child: Image.asset(
                      'assets/images/google.png',
                      width: 30,
                    ),
                  ),
                  // const SizedBox(width: 20),
                  // Image.asset(
                  //   'assets/images/facebook.png',
                  //   width: 20,
                  // ),
                  const SizedBox(width: 20),
                  Image.asset(
                    'assets/images/apple.png',
                    width: 30,
                  ),
                ],
              ),


              //text daftar
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Tidak punya akun INDRACO ? ",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  // SizedBox(width: 5),
                  InkWell(
                    onTap: (){
                      // Get.offNamed(Routes.REGISTER);
                    },
                    child: Text(
                      'Daftar',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.orange.shade900,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
