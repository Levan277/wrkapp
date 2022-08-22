import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wrkapp/constants/color.dart';
import 'package:wrkapp/constants/size.dart';
import 'package:wrkapp/main.dart';
import 'package:wrkapp/models/category.dart';
import 'package:wrkapp/screens/tweetScreen.dart';
import 'package:wrkapp/screens/tweetScreens/add_tweet.dart';
import 'package:wrkapp/screens/unitScreens/unit1/unit1.dart';
import 'package:wrkapp/screens/unitScreens/unit2/unit2_HOME.dart';
import 'package:wrkapp/screens/unitScreens/unit4/unit4Home.dart';
import 'package:wrkapp/screens/unitScreens/unit4/unit4Main.dart';
import 'package:wrkapp/widgets/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:wrkapp/route/route.dart' as route;
import '../widgets/search_testfield.dart';
import 'package:wrkapp/models/user.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
class FeaturedScreen extends StatefulWidget {
FeaturedScreen( {Key? key}) : super(key: key);

  @override
  _FeaturedScreenState createState() => _FeaturedScreenState();
}


class _FeaturedScreenState extends State<FeaturedScreen> {
  int index = 2;
  final List<Widget> items = [
    Icon(Icons.message,size: 30,),
    Icon(Icons.home,size: 30,),
    Icon(Icons.person,size: 30,),
  ];
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Colors.black,
bottomNavigationBar: CurvedNavigationBar(
  backgroundColor: Colors.black,
  color: Colors.yellow,
        height: 60.0,
        index: index,
        items: items,
        onTap: (index){
          setState((){
            this.index = index;
          });
          // if(index == 0){
          //  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeForum()));
          // }
          // else if(index == 1){
          //   Navigator.pushNamed(context, route.homePage);
          // }
        },
      ),
        body: Column(
          children: const [
            AppBar(
            ),
            Body(),
          ],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Explore Categories",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),

              // TextButton(
              //   onPressed: () {},
              //   child: Text(
              //     "See All",
              //     style: Theme.of(context)
              //         .textTheme
              //         .bodyMedium
              //         ?.copyWith(color: kPrimaryColor),
              //   ),
              // ),
            ],
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 8,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            crossAxisSpacing: 20,
            mainAxisSpacing: 24,
          ),
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categoryList[index],
            );
          },
          itemCount: categoryList.length,
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  final Category category;
  const CategoryCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
  if(categoryList[0].noOfCourses == 'Unit 1'){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Unit1()));
  }
  // if(categoryList[1].noOfCourses == 'Unit 2'){
  //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Unit2()));
  // }
  // if(categoryList[2].noOfCourses == 'Unit 3'){
  //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Unit3()));
  // }
  // if(categoryList[3].noOfCourses == 'Unit 4'){
  //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Unit4()));
  // }



      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 4.0,
              spreadRadius: .05,
            ), //BoxShadow
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                category.thumbnail,
                height: kCategoryCardImageSize,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(category.name,style: GoogleFonts.lato(fontSize: 13,fontWeight: FontWeight.bold),),
            Text(
              category.noOfCourses,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 0.5],
          colors: [
            Color(0xffFFEF00),
            Color(0xff000000),

            // Color(0xff886ff2),
            // Color(0xff6849ef),
          ],
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

             // InkWell(
             //   onTap: (){
             //     Navigator.pushNamed(context, route.chatScreen1);
             //   },
             //   child: Icon(
             //     Icons.message,
             //   ),
             // ),


              IconButton(onPressed:() async{
                await FirebaseAuth.instance.signOut();
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>MyApp()), (route) => false);
              },
                icon: Icon(Icons.logout,size: 32,),
              ),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeForum()));
                },
                child: Icon(Icons.add),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Ready To Learn?",
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            )
          ),
          SizedBox(height: 10,),
          Text("Choose Your Topic",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Colors.white),)
        ],
      ),
    );
  }
}


