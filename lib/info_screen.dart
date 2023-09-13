

import 'package:flutter/material.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: {}, icon: Icon(Icons.arrow_back_ios, color: Colors.white,size: 20,)),
        actions: [IconButton(onPressed: {}, icon: Icon(Icons.more_vert, color: Colors.white,size: 20,))],
      ),
      body: Column(
        children: [
          Image.network("https://img.traveltriangle.com/blog/wp-content/uploads/2023/06/PTV-India-Cover-Final.png",height: 500,),
          Text("Taj Mahal"),
          Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          Text("Picture"),
          
          
          Text("More in Bali >");
        ],),
    );
  }
}
