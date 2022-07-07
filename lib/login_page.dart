import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tory/colors.dart';
import 'package:tory/text_style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController mail_controller = TextEditingController();
  TextEditingController pw_controller = TextEditingController();

  final GlobalKey<FormState> _scaffoldKey =  GlobalKey<FormState>();
  final GlobalKey<FormState> _scaffoldKey2 =  GlobalKey<FormState>();
  
  bool obscureBool = true;
  @override
  void dispose() {
    mail_controller.dispose();
    pw_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Primary300,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32),
                  ), //모서리를 둥글게
                ),
                width: MediaQuery.of(context).size.width.w,
                height: 381.h,
              ),
              Container(
                margin: EdgeInsets.only(top: 20.h),
                padding: const EdgeInsets.symmetric(horizontal: 36),
                // decoration: BoxDecoration(
                //   border: Border.all(color: Colors.amber, width: 1),
                // ),
                child: Column(
                  children: <Widget>[
                    Form(
                      key: _scaffoldKey2,
                      child: TextFormField(
                        controller: mail_controller,
                        decoration: const InputDecoration(
                          hintText: "이메일",
                        ),
                        //TODO: 이메일 유효성 검사 추가 필요
                        validator: (text){
                          if( text == null || text.isEmpty ){
                            return "이메일을 입력해주세요";
                          }
                          return null;
                        },
                      ),
                    ),
                    Form(
                      key: _scaffoldKey,
                      child: TextFormField(
                        controller: pw_controller,
                        decoration: InputDecoration(
                          hintText: "비밀번호",
                          suffixIcon: obscureBool
                              ? IconButton(
                                  onPressed: () {
                                    setState(() {
                                      obscureBool = !obscureBool;
                                    });
                                  },
                                  icon: const Icon(Icons.visibility_off))
                              : IconButton(
                                  onPressed: () {
                                    setState(() {
                                      obscureBool = !obscureBool;
                                    });
                                  },
                                  icon: const Icon(Icons.visibility)),
                        ),
                        obscureText: obscureBool,
                        //TODO: 비밀번호 유효성 검사 추가 필요.
                        validator: (text){
                          if( text == null || text.isEmpty ){
                            return "비밀번호를 입력해주세요";
                          }
                          return null;
                        },
                      ),
                    ),
                  ].map((c) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: c,
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Primary500,
                  onPrimary: Colors.white,
                  fixedSize: const Size(330, 64),
                  textStyle: const TextStyle(
                    fontSize: 20,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  if (_scaffoldKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
                if (_scaffoldKey2.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
                },
                child: Text("로그인",style: button1(color: text_on_button),),
              ),
              Row(
                children: [
                  const SizedBox(width: 36,),
                  TextButton(onPressed: (){}, child: Text("아이디 찾기", style: subtitle4(color: line))),
                  Text("|", style: subtitle4(color: line)),
                  TextButton(onPressed: (){}, child: Text("비밀번호 찾기", style: subtitle4(color: line))),
                  const Spacer(),
                  TextButton(onPressed: (){}, child: Text("회원가입", style: subtitle4(color: text_on_color))),
                  const SizedBox(width: 36,),
                ],
              ),
              Row(
                children: [
                  const Expanded(child: Divider(
                    indent: 36,
                    endIndent: 10,
                  )),
                  Text("또는", style: subtitle4(color: line)),
                  const Expanded(child: Divider(
                    indent: 10,
                    endIndent: 36,
                  )),
                ],
              ),
              const SizedBox(height: 10,),
              Center(
                child: IconButton(onPressed: (){}, icon: const Icon(Icons.face)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
