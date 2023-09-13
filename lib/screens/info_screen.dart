import 'package:assignment_go_digital/model/data.dart';
import 'package:assignment_go_digital/widgets/pictures_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/places_model.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {



  Places convertDataToModel() {
    return Places(place);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: () {},
            icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 24.w,)),
        actions: [
          IconButton(onPressed: () {},
              icon: Icon(Icons.more_vert, color: Colors.white, size: 24.w,))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(convertDataToModel().images!.first, width: double.infinity,
              height: 400.h,
              fit: BoxFit.cover,),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10,top: 15,bottom: 15).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(convertDataToModel().city! ?? "" , style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,

                ),),
                SizedBox(height: 15.h,),
                Text(
                  convertDataToModel().description! ?? ""   , style: TextStyle(
                    color: Colors.black87,
                    fontSize: 14.sp,
                ),),
                SizedBox(height: 15.h,),
                Text("Picture", style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold
                ),),

                  SizedBox(height: 15.h,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ...convertDataToModel().images?.map((e) => PictureWidget(e))
                        .take(4)
                        .toList() ?? [],

                    Container(
                      width: 60.w,
                      height: 60.h,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      margin: EdgeInsets.only(right: 10.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.r)),
                          color: Colors.black54
                      ),
                      child: Center(
                        child: Text("+ ${convertDataToModel().images!.length ?? 0 - 4?? 0}",
                          style: TextStyle(color: Colors.white, fontSize: 20.sp,fontWeight: FontWeight.bold, fontFamily: GoogleFonts.tajawal().fontFamily),),
                      ),
                    )
                  ],
                ),
                  SizedBox(height: 15.h,),

               Row(children: [
                 Text("More in ${convertDataToModel().country! ?? ""}", style: TextStyle(
                     color: Colors.green.shade700,
                     fontSize: 18.sp,
                     fontWeight: FontWeight.bold
                 ),),
                 
                 Icon(Icons.arrow_forward_ios,size: 18.sp,color: Colors.green.shade700,)
               ],)
              ],),
            )
          ],
        ),
      )
      ,
    );
  }


}
