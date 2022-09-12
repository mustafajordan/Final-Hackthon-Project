import 'package:ailearns/view/widgets/container_progress.dart';
import 'package:flutter/material.dart';
class LessonScreen extends StatelessWidget {
  const LessonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: Colors.black,
          title: Text("Continue Your Lessons",),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
          titleSpacing: 0,
          
        ),
        body: Padding(
          padding:EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: ListView.builder(
            itemCount: 5,
            itemBuilder:(context,index){
              return Column(
                children: [
                  ContainerProgress(),
                  SizedBox(height: 30,)
                ],
              );
              
            } 
            ), 
          ),
    );
  }
}