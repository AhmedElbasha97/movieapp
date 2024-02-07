import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled10/top_rated/top_rated_screen.dart';
import 'package:untitled10/trending/trending_screen.dart';
import 'package:untitled10/ui/home/home_controller.dart';
import '../../widgets/custom_elevated_button.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (HomeController controller) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/images/787adaa0183a5cced09d1e05c02d89e6.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 33,),
                Container(
                  width:Get.width,
                  height: 100,
                  child: Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [

                    SizedBox(width: 285,),
                  IconButton(
                    icon: Icon(Icons.search,color: Colors.white,),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.notifications,color: Colors.white,),
                    onPressed: () {},
                  ),],

                              ),
                ),
            SizedBox(height: 105,),
            Container(
              height: 160,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Rectangle .png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 35,
                      left: 40,
                    ),
                    child: Text(
                      "Loki: Season 2",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 40,
                    ),
                    child: Text(
                      "Action,Adventure,Fantasy",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.play_arrow,
                            color: Colors.black),
                        label: Text('Play',
                            style: TextStyle(color: Colors.black)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.add, color: Colors.black),
                        label: Text('My List',
                            style: TextStyle(color: Colors.black)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ],
          ),
          ),
          const SizedBox(height: 20),
          Row(
          children: [
          Text(
          ' Tv-shows',
          style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(width: 200),
          TextButton(
          onPressed: () {Get.to(()=>Trending());},
          child: Text(
          'See all',
          style: TextStyle(
          fontSize: 15,
          color: Colors.grey,
          ),
          ),
          ),
          ],
          ),
          Container(
          width: Get.width,
          height: 200,
          child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: controller.tvShowImages.length,
          itemBuilder: (context, index) {
          return Image(image:AssetImage( controller.tvShowImages[index]),
          fit: BoxFit.fill,
          );
          },
          ),
          ),
          const SizedBox(height: 20),
          Row(
          children: [
          Text(
          'Movies',
          style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(width: 230),
          TextButton(
          onPressed: () {Get.to(()=>TopRated());},
          child: Text(
          'See all',
          style: TextStyle(
          fontSize: 15,
          color: Colors.grey,
          ),
          ),
          ),
          ],
          ),
          Container(
          width: Get.width,
          height: 200,
          child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: controller.tvShowImages.length,
          itemBuilder: (context, index) {
          return Image(image:AssetImage( controller.tvShowImages[index]),
          fit: BoxFit.fill,
          );
          },
          ),
          ),
          ]),
          ),
          bottomNavigationBar: BottomNavigationBar(
          items: [
          BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.save_alt),
          label: 'Save',
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favourites',
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
          ),
          ],
          currentIndex: 0,
          //
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          onTap: (int index) {},
          )
          );
        }
    );
  }
}
