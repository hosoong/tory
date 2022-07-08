import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tory/module/text_style.dart';
import '../module/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './example.dart';

class ProfileModifyPage extends StatefulWidget {
  const ProfileModifyPage({Key? key}) : super(key: key);

  @override
  State<ProfileModifyPage> createState() => _ProfileModifyPageState();
}

class _ProfileModifyPageState extends State<ProfileModifyPage> {
  final formKey = GlobalKey<FormState>();

  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordCheckController = TextEditingController();
  TextEditingController nicknameController = TextEditingController();

  final GlobalKey<FormState> _passwordKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _passwordCheckKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _nickNameKey = GlobalKey<FormState>();

  FocusNode focusNode = FocusNode();
  bool obscureBool = true;

  @override
  void dispose() {
    passwordController = TextEditingController();
    passwordCheckController = TextEditingController();
    nicknameController = TextEditingController();
    super.dispose();
  }

  List<String> _sexoptions = ['여자','남자'];
  List<String> _ageoptions = ['10대', '20대', '30대', '40대', '50대 +'];
  List<bool> _ageselected = [false, false, false, false, false];
  List<bool> _sexselected = [false, false];
  late String _isSexSelected='여자';
  late String _isAgeSelected='10대';

  Widget _buildSexChips() {
    List<Widget> sexchips = [];

    for (int i = 0; i < _sexoptions.length; i++) {
      ChoiceChip sexchoiceChip = ChoiceChip(
        selected: _sexselected[i],
        label: Text(_sexoptions[i],
          style: TextStyle(
              color: _isSexSelected==_sexoptions[i] ? Primary600 : text_on_color , fontSize: 12),),
        // avatar: FlutterLogo(),
        elevation: 0,
        pressElevation: 1,
        backgroundColor: Colors.white,
        selectedColor: Colors.white,
        onSelected: (bool selected) {
          setState(() {

          _isSexSelected = _sexoptions[i];
          });

          // _sexagecontroller.putSexAge(_sexselected[i].toString());

        },
      );

      sexchips.add(Row(
        children: [
          Material(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide(
                  color:  _isSexSelected == _sexoptions[i] ? Primary600 : text_on_color,
                )),
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 0),
                child: sexchoiceChip),
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
      ));
    }

    return Container(
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: sexchips,
      ),
    );
  }

  Widget _buildAgeChips() {
    List<Widget> agechips = [];

    for (int i = 0; i < _ageoptions.length; i++) {
      ChoiceChip agechoiceChip = ChoiceChip(
        selected: _ageselected[i],
        label: Text(_ageoptions[i],
            style: TextStyle(
                color: _isAgeSelected==_ageoptions[i] ? Primary600 : text_on_color, fontSize: 12)),
        // avatar: FlutterLogo(),
        elevation: 0,
        pressElevation: 1,
        backgroundColor: Colors.white,
        selectedColor: Colors.white,
        onSelected: (bool selected) {
          setState(() {
            _isAgeSelected = _ageoptions[i];
          });
        },
      );

      agechips.add(Row(
        children: [
          Material(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide(
                  color: (_isAgeSelected==_ageoptions[i]) ? Primary600 : text_on_color,
                )),
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 0),
                child: agechoiceChip),
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
      ));
    }

    return Container(
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: agechips,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          padding: EdgeInsets.fromLTRB(14.w, 0, 0, 0),
          icon: Icon(
            Icons.clear,
            color: text_on_button,
            size: 24.w,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          '프로필 수정',
          style: headline2(color: text_on_button),
        ),
        actions: [
          TextButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.fromLTRB(0, 3.h, 14.w, 0)),
            ),
            child: Text(
              '확인',
              style: button2(color: text_on_button),
            ),
            onPressed: () {
              Get.back();
            },
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
          child: Column(
            children: [
              profileHeader(),
              profileTextForm(context),
            ],
          )),
    );
  }


  profileHeader() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/left.png'),
            Image.asset('assets/center.png'),
            Image.asset('assets/right.png'),
          ],
        ),
      ],
    );
  }

  sameButton(){
    return InkWell(
      child:Material(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(
              color: Primary600,
            )),
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 1),
          child: Container(
            width: 68.w,
            height: 28.h,
            child: TextButton(
              child: Text('중복확인',style: subtitle3(color: Primary300),),
              onPressed: (){
                print('중복확인');
              },
            ),
          ),
            ),
      ),
    );
  }

//프로필 바디 profile body
  //TODO: 닉네임 중복체크 & not valid 시 ui포함.
  //TODO: 비밀번호 확인에서 아이콘 실시간으로 바뀌게 구현하기
  profileTextForm(BuildContext context) {
    bool isvalidIcon = false;
    return Container(
      width: 342.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('이메일',style: headline5(color: text_on_color),),
          Text('21900119@handong',style: body3(color: text_on_color),),
          SizedBox(height: 4.h,),
          Text('닉네임',style: headline5(color: text_on_color),),
          Row(
            children: [
              Container(
                width: 238.w,
                child: Form(
                  key: _nickNameKey,
                  child: TextFormField(
                    controller: nicknameController,
                      cursorWidth:4.w,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 0), //Change this value to custom as you like
                      isDense: true,
                      hintText: "",
                    ),
                    //TODO: 닉네임 유효성 검사 추가 필요
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return "같은 닉네임이 존재합니";
                      }
                      return "사용 가능한 닉네임입니다.";
                    },
                  ),
                ),
              ),
              SizedBox(width: 16.w),
              sameButton(),
            ],
          ),
          SizedBox(height: 4.h,),
          Text('비밀번호',style: headline5(color: text_on_color),),
          Form(
            key: _passwordKey,
            child: TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 0), //Change this value to custom as you like
                isDense: true,
              ),
              //
              obscureText: obscureBool,
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return "이메일을 입력해주세요";
                }
                return null;
              },
            ),
          ),
          SizedBox(height: 4.h,),
          Text('비밀번호 확인',style: headline5(color: text_on_color),),
          Focus(
            child: Form(
              key: _passwordCheckKey,
              child: TextFormField(
                controller: passwordCheckController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 0), //Change this value to custom as you like
                  isDense: true,
                  hintText: "",
                  suffixIcon: isvalidIcon==true ? Icon(Icons.check_circle, color: Primary500) : Icon(Icons.info,color: Colors.red,)
                ),
                obscureText: obscureBool,
                //
                validator: (text) {
                  if (text == null || passwordCheckController.text != passwordController.text) {
                    isvalidIcon=false;
                    return "비밀번호를 입력해주세요";
                  }
                  else {
                    isvalidIcon=true;
                    return null;
                  }
                },
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    '성별',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                    height: 30.h,
                    child: _buildSexChips(),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    '연령대',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                    height: 30.h,
                    child: _buildAgeChips(),
                  ),
                ],
              )),
        ].map((c) {
          return Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 10, horizontal: 10),
            child: c,
          );
        }).toList(),
      ),
    );
  }

}

