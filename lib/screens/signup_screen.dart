import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wrkapp/connectionsFirebase/auth_methods.dart';
import 'package:wrkapp/main.dart';
import 'package:wrkapp/route/route.dart' as route;
import 'package:wrkapp/screens/finalScreens/final_home.dart';
import 'package:wrkapp/utils/utils.dart';
import 'package:wrkapp/widgets/hyperlink_widget.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();

}

class _SignupScreenState extends State<SignupScreen> {

  _SignupScreenState(){
    selectedItem = items[0];
  }
  List<String> items = ['UCCan community of faith', 'UCCan national partner', 'UCCan global partner', 'No Affiliation'];
  String? selectedItem = 'UCCan community of faith';
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _countryController = new TextEditingController();
  Uint8List? _image;
  bool _isLoading = false;
  bool checkBoxVal = false;

  Future<void> signUpUser() async{

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.blue,
        duration: Duration(seconds: 5),
        content: Text('An Error Occured: Please Enter all details, Important: Include a photo.'),
      ),
    );
    setState((){
_isLoading = true;
    });

    String res =  await Authentications().signUp(email: _emailController.text, password: _passwordController.text, username: _usernameController.text,file: _image!,country: _countryController.text,affiliation: selectedItem!,
    acceptAgreement: checkBoxVal);
    setState((){
      _isLoading = false;
    });
  // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>MyApp()), (route) => false);
  //   Navigator.pushNamed(context, route.finalHome);

    if(res!="success"){

      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.blue,
            duration: Duration(seconds: 5),
            content: Text('An Error Occured: Please Enter all details, include a photo if possible'),
          ),
      );

    }else{
      Navigator.push(context, MaterialPageRoute(builder: (context)=>FinalHome()));
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

  void selectImage() async{
  Uint8List im = await pickImage(ImageSource.gallery);
   setState((){
     _image = im;
   });
  }


  @override



  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,),


        ), systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            // height: MediaQuery.of(context).size.height - 50,
            height: 650,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    _image!=null?
                    CircleAvatar(
                      radius: 64.0,
                      backgroundImage:MemoryImage(_image!),

                    ):
                    const  CircleAvatar(
                      radius: 64.0,
                      backgroundImage: AssetImage('assets/images/emptyImage.png'),

                    ),
                    Positioned(
                      bottom: -10,
                      left: 80,
                      child: IconButton(
                        onPressed: selectImage,
                        icon: const Icon(Icons.add_a_photo,
                        ),

                      ),
                    ),
                    Text("Sign up",
                      style: GoogleFonts.montserrat(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,

                      ),),
                    SizedBox(height: 20,),
                    Text("Create an account, It's free ",
                      style: GoogleFonts.montserrat(
                          fontSize: 15,
                          color:Colors.grey[700]),)


                  ],
                ),
                Column(
                  children: <Widget>[
                    // inputFile(label: "Username"),
                    inputFile(label: "Username",textEditingController: _usernameController),
                    inputFile(label: "Email",textEditingController: _emailController),
                    inputFile(label: "Password", obscureText: true,textEditingController: _passwordController),
                    inputFile(label: "Country", obscureText: false,textEditingController:_countryController ),

                    // inputFile(label: "Confirm Password ", obscureText: true),
                  ],
                ),


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
  HyperLinkText(text:"You Must Read and Accept The EULA Conditions",
    urlText: 'https://www.apple.com/legal/internet-services/itunes/dev/stdeula/',
  ),
],)




              ],

            ),



          ),
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

          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 3, left: 3),
              decoration:
              BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border(
                  bottom: BorderSide(color: Colors.black),
                  top: BorderSide(color: Colors.black),
                  left: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),



                ),


              ),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 60,
                onPressed: signUpUser,
                color: Colors.red,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),

                ),
                child: Text(
                  "Sign up", style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.white,

                  ),
                ),
              ),



            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Already have an account?"),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, route.loginPage);
                },
                child: Text(" Login", style:GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 18
                ),
                ),
              )
            ],
          )

        ],


      ),

    );
  }
}



// we will be creating a widget for text field
Widget inputFile({label, obscureText = false, textEditingController})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      RichText(
        text: TextSpan(
            text: label,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
            children: [
              TextSpan(
                  text: ' *',
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 16))
            ]),


      ),

      // Text(
      //   label,
      //   style: GoogleFonts.montserrat(
      //       fontSize: 15,
      //       fontWeight: FontWeight.w400,
      //       color:Colors.black87
      //   ),
      //
      // ),
      SizedBox(
        height: 5,
      ),
      TextField(
        controller: textEditingController,
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0,
                horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.grey.shade400,
              ),

            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400),
            )
        ),
      ),
      SizedBox(height: 10,)
    ],
  );
  }

