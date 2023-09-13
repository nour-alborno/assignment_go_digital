

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PictureWidget extends StatefulWidget {
  const PictureWidget(this.picture );

 final String picture;


  @override
  State<PictureWidget> createState() => _PictureWidgetState();
}

class _PictureWidgetState extends State<PictureWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.w,
      height: 60.h,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: EdgeInsets.only(right: 10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        
      ),
      child: Image.network(widget.picture,fit: BoxFit.cover),
    );
  }
}
