import 'package:flutter/material.dart';
import 'package:fw11_furniture_app/Data/furniture_data.dart';
import 'package:fw11_furniture_app/screen_manager.dart';

class FurnitureCard extends StatelessWidget {
  const FurnitureCard({
    Key key,
    @required this.screenHeight,
    @required this.info,
  }) : super(key: key);

  final double screenHeight;
  final FurnitureInfo info;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        alignment:  Alignment.center,
        height: screenHeight * 0.25,
        margin: EdgeInsets.symmetric(vertical: screenHeight * 0.05),
        width : ScreenManager.getWidgetWidth(660),
        decoration: BoxDecoration(
          color: info.backgroundColor,
          borderRadius: BorderRadius.circular(ScreenManager.getWidgetWidth(40)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 1,
              offset: Offset(2, 3), // changes position of shadow
            ),
          ],
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: ScreenManager.getWidgetWidth(0),
              child: Container(
                alignment:  Alignment.center,
                height: screenHeight * 0.25,
                width: ScreenManager.getWidgetWidth(645),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(ScreenManager.getWidgetWidth(40)),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey.withOpacity(0.5),
                  //     spreadRadius: 5,
                  //     blurRadius: 7,
                  //     offset: Offset(0, 3), // changes position of shadow
                  //   ),
                  // ],
                ),
              ),
            ),
            //FURNITURE NAME
            Positioned(
              left: ScreenManager.getWidgetWidth(20),
              top: screenHeight * 0.03,
              child: Container(
                //color: Colors.green,
                alignment:  Alignment.topLeft,
                height: screenHeight * 0.1,
                width: ScreenManager.getWidgetWidth(260),
                child: Text(
                  info.name,
                  style: TextStyle(
                    fontSize: screenHeight * 0.025,
                    color: Colors.black,
                    fontWeight: FontWeight.w700 
                  ),
                  maxLines: 2,
                  textScaleFactor: 1.0,
                  textAlign: TextAlign.left,
                ), 
              ),
            ),
            //FURNITURE PRICE
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                
                alignment:  Alignment.center,
                height: screenHeight * 0.07,
                width: ScreenManager.getWidgetWidth(200),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(ScreenManager.getWidgetWidth(40)),
                    topRight: Radius.circular(ScreenManager.getWidgetWidth(40)),
                  ),
                ),
                child: Text(
                  "${info.price}\$",
                  style: TextStyle(
                    fontSize: screenHeight * 0.03,
                    color: Colors.black,
                    fontWeight: FontWeight.w700 
                  ),
                  maxLines: 2,
                  textScaleFactor: 1.0,
                ), 
              ),
            ),
            //FURNITURE IMAGE
            Positioned(
              right: ScreenManager.getWidgetWidth(10),
              bottom: screenHeight* 0.03,
              child: Container(
                  alignment:  Alignment.center,
                  height: ScreenManager.getWidgetWidth(380),
                  width: ScreenManager.getWidgetWidth(380),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(info.imageUrl),
                      fit: BoxFit.cover
                    )
                  ),
              ),
            )
          ],
        )
      ),
    );
  }
}