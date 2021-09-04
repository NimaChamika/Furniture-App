import 'package:flutter/material.dart';
import 'package:fw11_furniture_app/Widget/furniture_card.dart';

import '../Data/furniture_data.dart';
import '../screen_manager.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  double screenHeight;
  int _selectedMenuIndex = 0;


  @override
  Widget build(BuildContext context) {

    Size _screenData = MediaQuery.of(context).size;
    EdgeInsets _paddingData = MediaQuery.of(context).padding;

    ScreenManager.initScreenData(_screenData, _paddingData);
    //print(ScreenManager.screenSysNavBarHeight);
    screenHeight =  ScreenManager.getWidgetHeight(1520);
    //double screenWidth =  ScreenManager.getWidgetHeight(720);
    
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Colors.blue[800],
            height: screenHeight,
            child: Column(
              children: [
                //APPBAR
                Container(
                  height: screenHeight * 0.13,
                  padding: EdgeInsets.symmetric(horizontal: ScreenManager.getWidgetWidth(30)),
                  //color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Dashboard",
                        style: TextStyle(
                          fontSize: screenHeight * 0.045,
                          color: Colors.white,
                          fontWeight: FontWeight.w700 
                        ),
                        maxLines: 1,
                        textScaleFactor: 1.0,
                      ), 
                      IconButton(
                        icon: Icon(Icons.notifications_outlined),
                        iconSize: screenHeight * 0.05,
                        color: Colors.grey,
                        onPressed: () {  },
                      )
                    ],
                  ),
                ),
                //SEARCH BAR
                Container(
                  height: screenHeight * 0.1,
                  padding: EdgeInsets.symmetric(horizontal: ScreenManager.getWidgetWidth(30),vertical: screenHeight * 0.01),
                  //color: Colors.red,
                  child: Container(
                    alignment: Alignment.center,
                    height: screenHeight * 0.08,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(ScreenManager.getWidgetWidth(20)),
                      color: Colors.white54,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: ScreenManager.getWidgetWidth(30),
                        ),
                        Icon(
                          Icons.search,
                          size: screenHeight * 0.05,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: ScreenManager.getWidgetWidth(30),
                        ),
                        Expanded(
                          child: Container(
                            //color: Colors.redAccent,
                            child: TextField(
                              style: TextStyle(
                                fontSize: screenHeight * 0.04,
                                color: Colors.white,
                                fontWeight: FontWeight.w300 
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search",
                                hintStyle: TextStyle(
                                  fontSize: screenHeight * 0.04,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300 
                                ),
                                
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: ScreenManager.getWidgetWidth(30),
                        ),
                      ],
                    ),
                  ),
                ),
                //FURNITURE MENU
                Container(
                  height: screenHeight * 0.1,
                  width: ScreenManager.getWidgetWidth(720),
                  //color: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: ScreenManager.getWidgetWidth(30),vertical: screenHeight * 0.02),
                  alignment: Alignment.centerLeft,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: furnitureTypeList.length,
                    itemBuilder: (BuildContext context,int index){
                        return menuItem(furnitureTypeList[index],index);
                    },
                  ),
                ),
                Container(
                  height: screenHeight * 0.67,
                  color: Colors.white,
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(
                    left: ScreenManager.getWidgetWidth(30),
                    right: ScreenManager.getWidgetWidth(30),
                    
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: furnitureInfoList.length,
                    itemBuilder: (BuildContext context,int index){

                      FurnitureInfo data = furnitureInfoList[index];

                      return FurnitureCard(
                        screenHeight: screenHeight,
                        info: data,
                      );
                    }
                  ),
                ),
              ]
            )
          ),
        ),
      ),
    );
  }

  Widget menuItem(String name,int index)
  {
    return GestureDetector(
      onTap: (){
        setState(() {
          _selectedMenuIndex = index;
        });
      },
      child: Container(
        alignment:  Alignment.center,
        height: screenHeight * 0.06,
        margin: EdgeInsets.only(right: ScreenManager.getWidgetWidth(20)),
        width: ScreenManager.getWidgetWidth((20.0 * name.length)+40),
        decoration: BoxDecoration(
          color: _selectedMenuIndex == index ? Colors.white54 : Colors.transparent,
          borderRadius: BorderRadius.circular(ScreenManager.getWidgetWidth(20))
        ),
        child: Text(
          name,
          style: TextStyle(
            fontSize: screenHeight * 0.02,
            color: Colors.white,
            fontWeight: FontWeight.w700 
          ),
          textAlign: TextAlign.center,
          maxLines: 1,
          textScaleFactor: 1.0,
        ),
      ),
    );
  }
}




                        



                  