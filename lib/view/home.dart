
import 'package:ailearns/view/lesson.dart';
import 'package:ailearns/view/widgets/Row_home.dart';
import 'package:ailearns/view/widgets/container_home.dart';
import 'package:ailearns/view/widgets/container_progress.dart';
import 'package:ailearns/view/widgets/courses.dart';
import 'package:ailearns/view/widgets/customsearchbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor:Theme.of(context).scaffoldBackgroundColor,
          leading: Padding(
          padding:  EdgeInsets.only(left: 15),
          child: CircleAvatar(
            // backgroundImage: new NetworkImage(userPicUrl),
          ),
        ),
          
          title: Column(
            children: [
              Text("TALHA",style: TextStyle(color: Colors.black, fontSize: 17.0),),
              Text("Feroz",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right:15),
              child: Row(
                children: [
                  FaIcon(FontAwesomeIcons.bell,size: 20,color: Colors.black),
                  SizedBox(width: 20,),
                  FaIcon(FontAwesomeIcons.heart,size: 20,color: Colors.black),
                ],
              ),
            ),
          ],
        ),
        
         bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.calendar),label: 'Appointment',),
          BottomNavigationBarItem(icon: Icon(Icons.history),label: 'History',),
          BottomNavigationBarItem(icon: Icon(Icons.article),label: 'Articles',),
          BottomNavigationBarItem(icon: Icon(Icons.people),label: 'Profile',),
        ]),
       body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(padding: EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(height: 10,),
                CustomSearchBar(onChange: (){}),
                SizedBox(height: 25,),
                
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      RowHome(
                       data:Column(
                         children: [
                           ContainerHome(ONTAP: (){},child: Image(image: AssetImage("assets/images/coding.jpeg"))),
                           SizedBox(height: 10,),
                           Text("Coding")
                         ],
                       ) ,
                       data1:Column(
                         children: [
                           ContainerHome(ONTAP: (){},child: Image(image: AssetImage("assets/images/design.jpeg"))),
                           SizedBox(height: 10,),
                           Text("Design")
                         ],
                       ) ,
                       data2:Column(
                         children: [
                           ContainerHome(ONTAP: (){},child: Image(image: AssetImage("assets/images/marketing.jpeg"))),
                           SizedBox(height: 10,),
                           Text("Marketing")
                         ],
                       ) ,
                       data3:Column(
                         children: [
                           ContainerHome(ONTAP: (){},child: Image(image: AssetImage("assets/images/business.jpeg"))),
                           SizedBox(height: 10,),
                           Text("Business")
                         ],
                       ) ,
                      ),
                      SizedBox(height: 15,),
                       RowHome(
                       data:Column(
                         children: [
                           ContainerHome(ONTAP: (){},child: Image(image: AssetImage("assets/images/lifestyle.jpeg"))),
                           SizedBox(height: 10,),
                           Text("Lifestyle")
                         ],
                       ) ,
                       data1:Column(
                         children: [
                           ContainerHome(ONTAP: (){},child: Image(image: AssetImage("assets/images/music.jpeg"))),
                           SizedBox(height: 10,),
                           Text("Music")
                         ],
                       ) ,
                       data2:Column(
                         children: [
                           ContainerHome(
                            ONTAP: (){},child: Image(image: AssetImage("assets/images/academics.jpeg"))),
                           SizedBox(height: 10,),
                           Text("Academics")
                         ],
                       ) ,
                       data3:Column(
                         children: [
                           ContainerHome(ONTAP: (){},child: Image(image: AssetImage("assets/images/more.jpeg"))),
                           SizedBox(height: 10,),
                           Text("More")
                         ],
                       ) ,
                      ),
                      
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Continue Your Lessons",style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 20
                  ),),
                  InkWell(
                    onTap: (){
                      Get.to(LessonScreen());
                    },
                    child: Text("See All",style: TextStyle(
                    fontSize: 16,color: Colors.blue,fontWeight: FontWeight.w600
                  ),)
                    ),
                ],
                ),
                SizedBox(height: 20,),
                ContainerProgress(),
                SizedBox(height: 20,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Recommendation Course",style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 20
                  ),),
                  InkWell(
                    onTap: (){
                      // Get.to(LessonScreen());
                    },
                    child: Text("See All",style: TextStyle(
                    fontSize: 16,color: Colors.blue,fontWeight: FontWeight.w600
                  ),)
                    ),
                ],
                ),
                SizedBox(height: 20,),
                ItemWidget(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    
                    children: [
                      // BottomList(ontap: (){},data: Text("All",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue),),),
                      // SizedBox(width: 15,),
                      // BottomList(ontap: (){},data: Text("General",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue),),),
                      // SizedBox(width: 15,),
                      // BottomList(ontap: (){},data: Text("Dentist",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue),),),
                      // SizedBox(width: 15,),
                      // BottomList(ontap: (){},data: Text("Pediartic",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue),),),
                      // SizedBox(width: 15,),
                      // BottomList(ontap: (){},data: Text("Radiologist",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue),),),
                      // SizedBox(width: 15,),
                      // BottomList(ontap: (){},data: Text("Neurologist",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue),),),
                      // SizedBox(width: 15,),
                      // BottomList(ontap: (){},data: Text("Ophthal",style: TextStyle(fontSize: 15,color: Colors.blue),),),
                    ],
                  ),
                )
              ],
            ),
            )
            ),
        ),
    );
  }
}