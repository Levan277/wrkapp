import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wrkapp/connectionsFirebase/auth_methods.dart';
import 'package:wrkapp/main.dart';
import 'package:wrkapp/route/route.dart' as route;
import 'package:wrkapp/screens/finalScreens/final_home.dart';
import 'package:wrkapp/screens/login_screen.dart';
import 'package:wrkapp/utils/utils.dart';
import 'package:wrkapp/widgets/hyperlink_widget.dart';
class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();

}

class _RegisterScreenState extends State<RegisterScreen> {

  _RegisterScreenState() {
    selectedItem = items[0];
  }



  List<String> items = [
    'UCCan community of faith',
    'UCCan national partner',
    'UCCan global partner',
    'No Affiliation'
  ];
  String? selectedItem = 'UCCan community of faith';
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _countryController = new TextEditingController();
  Uint8List? _image;
  bool _isLoading = false;
  bool checkBoxVal = false;


  Future<void> signUpUser() async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.blue,
        duration: Duration(seconds: 3),
        content: Text(
            'An Error Occured: Please Enter all details!'),
      ),
    );
    setState(() {
      _isLoading = true;
    });



    String res = await Authentications().signUp(email: _emailController.text,
        password: _passwordController.text,
        username: _usernameController.text,
        country: _countryController.text,
        affiliation: selectedItem!,
        acceptAgreement: checkBoxVal);
    setState(() {
      _isLoading = false;
    });
    // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>MyApp()), (route) => false);
    //   Navigator.pushNamed(context, route.finalHome);

    if (res != "success") {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.blue,
          duration: Duration(seconds: 5),
          content: Text(
              'An Error Occured: Please Enter all details, include a photo if possible'),
        ),
      );
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => FinalHome()));
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _usernameController.dispose();
  }

  //
  // void selectImage() async {
  //   try{
  //     final ByteData bytes = await rootBundle.load('assets/images/emptyImage.png');
  //     final Uint8List list = bytes.buffer.asUint8List();
  //
  //     // Uint8List im = await pickImage(ImageSource.gallery);
  //     setState(() {
  //       _image= im;
  //     });
  //   }catch(e){
  //     print("image error");
  //   }
  //
  // }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        //we are adding this so that we can scroll when KeyBoard PopsUp.
        child: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          // If you get any blur that is outoff the screen then try to decrease or increase this negative value.This is mainly bcz it adjusts as per the phone size.
          alignment: Alignment.topCenter,
          child: Container(
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Form(
                    child: Column(

                      children: [


                        // _image!=null?
                        // CircleAvatar(
                        //   radius: 64.0,
                        //   backgroundImage:MemoryImage(_image!),

                        // ),

                        // const  CircleAvatar(
                        //   radius: 64.0,
                        //    backgroundImage: AssetImage('assets/images/emptyImage.png'),
                        //
                        //  ),
                        //  Positioned(
                        //    bottom: -10,
                        //    left: 80,
                        //    child: IconButton(
                        //      onPressed: selectImage,
                        //      icon: const Icon(Icons.add_a_photo,
                        //      ),
                        //
                        //    ),
                        //  ),
SizedBox(height: 150,),
                        //The Username,Email,Password Input fields.
                        SizedBox(height: 20),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffe1e2e3),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ]),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 5),
                                decoration: BoxDecoration(
                                    color: Color(0xfff5f8fd),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                                child: TextFormField(
                                  controller: _usernameController,
                                  decoration: InputDecoration(
                                      hintText: "Username",
                                      border: InputBorder.none),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 5),
                                decoration: BoxDecoration(
                                    color: Color(0xfff5f8fd),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                                child: TextFormField(
                                  controller: _emailController,
                                  decoration: InputDecoration(

                                      hintText: "Email",
                                      border: InputBorder.none),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 5),
                                decoration: BoxDecoration(
                                    color: Color(0xfff5f8fd),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                                child: TextFormField(
                                  controller: _passwordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      border: InputBorder.none),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 5),
                                decoration: BoxDecoration(
                                    color: Color(0xfff5f8fd),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                                child: TextFormField(
                                  controller: _countryController,
                                  decoration: InputDecoration(
                                      hintText: "Country",
                                      border: InputBorder.none),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: DropdownButtonFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Affiliation',
                                    border: UnderlineInputBorder(),
                                  ),
                                  value: selectedItem,
                                  items: items.map(
                                          (e) => DropdownMenuItem(child: Center(child: Text(e,style: TextStyle(),textAlign: TextAlign.center,)),value: e)
                                  ).toList(),
                                  onChanged: (val){
                                    setState((){
                                      selectedItem = val as String;
                                    });
                                  },
                                ),
                              ),
                              SizedBox(height: 5,),
                              Row(children: [
                                Checkbox(value: checkBoxVal, onChanged: (value){
                                  setState(() {
                                    checkBoxVal = value!;
                                  });
                                }),
                                Text("*",style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),),
                                SizedBox(width: 15,),
                                Expanded(
                                  child: HyperLinkText(text:"You Must Read and Accept The EULA Conditions",
                                    urlText: 'https://www.apple.com/legal/internet-services/itunes/dev/stdeula/',
                                  ),
                                ),
                              ],),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  //Raised Buttons of sigup will appear.
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 13,
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 55),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.white70),
                                borderRadius:
                                BorderRadius.all(Radius.circular(20)))

                        ),

                        onPressed: signUpUser,

                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(width: 5),

                    ],
                  ),
                  SizedBox(height: 25),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text("Already have an account?"),
                    SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                      },
                      child: Container(
                        child: Text("Sign In",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.deepPurpleAccent,
                                fontSize: 18)),
                      ),
                    )
                  ]),
                ],
              )),
        ),
      ),
    );
  }
}

