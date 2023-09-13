import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios, color: Colors.white,size: 20.w,)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert, color: Colors.white,size: 20.w,))],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQURnx1oM1qcO-vk98fTBHq2BhJbez8NSng2Ms50z_afXQydsmBwwE1yEFe5BZKQ8LaC6E&usqp=CAU", width: double.infinity,height: 400.h,fit: BoxFit.cover,),
          Text("Taj Mahal",style: TextStyle(
            color: Colors.black
          ),),
          Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
            ,style: TextStyle(
                color: Colors.black
            ),),
          Text("Picture",style: TextStyle(
              color: Colors.black
          ),),

          //todo: do the list widget and boxDecoration and the apply the data
          Text("More in Bali >",style: TextStyle(
              color: Colors.green
          ),),
        ],),
    );
  }
}
