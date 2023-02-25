import 'package:flutter/material.dart';
import 'package:forlearning/const/color.dart';
import 'package:forlearning/const/text_style.dart';
import "package:get/get.dart";


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgdarkColor,
      appBar: AppBar(
        backgroundColor: bgdarkColor,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search, color: whiteColor,))
        ],
        leading: Icon(Icons.sort_rounded, color: whiteColor,),
        title: Text(
          "Beats",
          style: ourStyle(
            size: 18
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 100,
            itemBuilder: (BuildContext context, int index){
            return Container(
              margin: EdgeInsets.only(bottom: 4),
              child:  ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                tileColor: bgColor,
                title: Text(
                  "Music name",
                  style: ourStyle(
                    size: 15
                  ),
                ),
                subtitle: Text(
                  "Artist name",
                  style: ourStyle(
                      size: 12,
                  ),
                ) ,
                leading: Icon(Icons.music_note,color: whiteColor ,size: 32,),

                trailing: Icon(Icons.play_arrow, color: whiteColor, size: 26, ),

              ),
            );
            }
        ),
      ),
    );
  }
}
