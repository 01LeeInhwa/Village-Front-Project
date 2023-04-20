import 'package:flutter/material.dart';
import 'package:village/core/constants/color.dart';

class UpdateForm extends StatelessWidget {
  final _formfield = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordController2 = TextEditingController();
  final accountController = TextEditingController();
  final telController = TextEditingController();

  bool passwordToggle = true;

  UpdateForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formfield,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                  labelText: "닉네임",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                  hintText: "닉네임을 입력해주세요."),
              validator: (value) {
                if (value!.isEmpty) {
                  return "닉네임을 입력해주세요.";
                } else if (nameController.text.length < 2) {
                  return "닉네임은 2자 이상입니다.";
                }
                return null;
              }),
          const SizedBox(height: 20),
          TextFormField(
              controller: passwordController,
              obscureText: passwordToggle,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                labelText: "비밀번호",
                border: const OutlineInputBorder(),
                hintText: "8자 이상의 비밀번호",
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: InkWell(
                  onTap: () {
                    passwordToggle = !passwordToggle;
                  },
                  child: Icon(
                      passwordToggle ? Icons.visibility : Icons.visibility_off),
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "비밀번호를 입력해주세요.";
                } else if (passwordController.text.length < 8) {
                  return "비밀번호는 8자 이상입니다.";
                }
                return null;
              }),
          const SizedBox(height: 20),
          TextFormField(
              controller: passwordController2,
              obscureText: passwordToggle,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                labelText: "비밀번호 확인",
                border: const OutlineInputBorder(),
                hintText: "비밀번호 확인",
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: InkWell(
                  onTap: () {
                    passwordToggle = !passwordToggle;
                  },
                  child: Icon(
                      passwordToggle ? Icons.visibility : Icons.visibility_off),
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "비밀번호를 입력해주세요.";
                } else if (passwordController.text.length < 8) {
                  return "비밀번호는 8자 이상입니다.";
                } else if (value != passwordController.text) {
                  return "비밀번호가 다릅니다.";
                }
                return null;
              }),
          const SizedBox(height: 20),
          TextFormField(
              keyboardType: TextInputType.number,
              controller: accountController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 15),
                labelText: "계좌번호",
                border: OutlineInputBorder(),
                hintText: "( - ) 없이 입력해주세요",
                prefixIcon: Icon(Icons.monetization_on),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "계좌번호를 입력해주세요.";
                } else if (accountController.text.contains("-")) {
                  return "( - ) 을 제외하고 입력해주세요.";
                }
                return null;
              }),
          const SizedBox(height: 20),
          TextFormField(
              keyboardType: TextInputType.number,
              controller: telController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 15),
                labelText: "전화번호",
                border: OutlineInputBorder(),
                hintText: "( - ) 없이 입력해주세요",
                prefixIcon: Icon(Icons.phone_iphone),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "전화번호를 입력해주세요.";
                } else if (telController.text.contains("-")) {
                  return "( - ) 을 제외하고 입력해주세요.";
                }
                return null;
              }),
          const SizedBox(height: 30),
          InkWell(
            onTap: () async {
              if (_formfield.currentState!.validate()) {
                print("회원가입 성공");
                // Navigator.pop(context, MaterialPageRoute(builder: (context) => LoginPage(),));
              }
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: kPrimaryColor, borderRadius: BorderRadius.circular(8)),
              child: const Center(
                child: Text(
                  "회원 정보 변경하기",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
