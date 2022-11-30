import 'package:flutter/material.dart';
import 'package:wrkapp/TutorialScreens/items.dart';
import 'package:wrkapp/screens/tweetScreen.dart';
class ForumTutorialScreen extends StatefulWidget {
  const ForumTutorialScreen({Key? key}) : super(key: key);

  @override
  State<ForumTutorialScreen> createState() => _ForumTutorialScreenState();
}

class _ForumTutorialScreenState extends State<ForumTutorialScreen> {



  List<Widget> slides = items
      .map((item) => Expanded(
        child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        child: Expanded(
          child: Column(
            children: <Widget>[

              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Image.asset(
                  item['image'],
                  fit: BoxFit.fitWidth,
                width: 200,

                  alignment: Alignment.bottomCenter,
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Text(item['header'],
                            style: TextStyle(
                                fontSize: 50.0,
                                fontWeight: FontWeight.w300,
                                color: Color(0XFF3F3D56),
                                height: 2.0,)),
                      ),


                      Text(
                        item['description'],
                        style: TextStyle(
                            color: Colors.grey,
                            letterSpacing: 1.2,
                            fontSize: 16.0,
                            height: 1.3),
                        textAlign: TextAlign.center,
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Button(),
                      ),
                      Text("Swipe"),
                      Icon(Icons.arrow_right,color: Colors.black,),
                    ],
                  ),
                ),
              )
            ],
          ),
        )),
      ))
      .toList();

  List<Widget> indicator() => List<Widget>.generate(
      slides.length,
          (index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 3.0),
        height: 0.0,
        width: 10.0,
        decoration: BoxDecoration(
            color: currentPage.round() == index
                ? Color(0XFF256075)
                : Color(0XFF256075).withOpacity(0.2),
            borderRadius: BorderRadius.circular(10.0)),
      ));

  double currentPage = 0.0;
  final _pageViewController = new PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            PageView.builder(
                controller: _pageViewController,
                itemCount: slides.length,
                itemBuilder: (BuildContext context, int index){
                  _pageViewController.addListener(() {
                    setState((){
                      currentPage = _pageViewController.page!;
                    });
                  });
                  return slides[index];
                },
                ),

            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 70.0),
                  padding: EdgeInsets.symmetric(vertical: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: indicator(),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeForum()));

      }, child: Text("Skip to Forum Page")),
    );
  }
}
