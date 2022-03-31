// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:castservice/CHAT/models/screens/home_screens.dart';
import 'package:castservice/FEED/view_post_screen.dart';
import 'package:castservice/MODELO_FEED/post_model.dart';
import 'package:castservice/PERFIL/perfil_pessoal.dart';
import 'package:castservice/SEARCH/search.dart';
import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  Widget _buildPost(int index) {
    return Padding(
      
      padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 5.0),
      child: Container(
        width: double.infinity,
        height: 560.0,
        decoration: BoxDecoration(
          color: Colors.white,
         // borderRadius: BorderRadius.circular(0.0),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(0, 2),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        child: ClipOval(
                          child: Image(
                            height: 50.0,
                            width: 50.0,
                            image: AssetImage(posts[index].authorImageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      posts[index].authorName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(posts[index].timeAgo),
                    trailing: IconButton(
                      icon: Icon(Icons.more_horiz),
                      color: Colors.black,
                      onPressed: () => print('More'),
                    ),
                  ),
                  InkWell(
                    onDoubleTap: () => print('Like post'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ViewPostScreen(
                            post: posts[index],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      
                      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      width: double.infinity,
                      height: 400.0,
                      decoration: BoxDecoration(

                        //borderRadius: BorderRadius.circular(25.0),
                        // ignore: prefer_const_literals_to_create_immutables
                        /*boxShadow: [
                          BoxShadow(
                            color: Colors.red,
                            offset: Offset(0, 5),
                            blurRadius: 8.0,
                          ),
                        ],*/
                        
                        image: DecorationImage(
                          image: AssetImage(posts[index].imageUrl),
                          fit: BoxFit.fitHeight,
                        
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.favorite_border),
                                  iconSize: 30.0,
                                  onPressed: () => print('Like post'),
                                ),
                                Text(
                                  '2,515',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 20.0),
                            Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.chat),
                                  iconSize: 30.0,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => ViewPostScreen(
                                          post: posts[index],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                Text(
                                  '350',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        IconButton(
                          icon: Icon(Icons.bookmark_border),
                          iconSize: 30.0,
                          onPressed: () => print('Save post'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      //backgroundColor: Color(0xFFEDF0F6),
      backgroundColor: Color(0xFFFFFFFF),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Instagram',
                  style: TextStyle(
                    fontFamily: 'Billabong',
                    fontSize: 32.0,
                  ),
                ), 
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.live_tv),
                      iconSize: 30.0,
                      onPressed: () => print('IGTV'),
                    ),
                    SizedBox(width: 16.0),
                    SizedBox(
                      width: 35.0,
                      child: IconButton(
                        icon: Icon(Icons.send),
                        iconSize: 30.0,
                        onPressed: () => print('Direct Messages'),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          
          // ignore: sized_box_for_whitespace
          Container(
            width: double.infinity,
            height: 100.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: stories.length + 1,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return SizedBox(width: 10.0);
                }
                
                return Container(
                  
                  margin: EdgeInsets.all(10.0),
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        offset: Offset(0, 2),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Image(
                        height: 60.0,
                        width: 60.0,
                        image: AssetImage(stories[index - 1]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Divider(
            height: 1,
            thickness: 0.2,
            color: Colors.black,
          ),
          _buildPost(0),
          _buildPost(1),
        ],
      ),
      bottomNavigationBar: ClipRRect(
      
       /* borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ), */
        
        child: BottomNavigationBar(
          
          onTap: (value) => PerfilPessoal(),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
                size: 32.0,
                color: Colors.black,
              ),
              // ignore: deprecated_member_use
              title: Text(''),
            ),
           BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                // ignore: deprecated_member_use
                child: FlatButton(
              
               
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) =>  Search()));
                  },
                  child: Icon(
                    Icons.search,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              // ignore: deprecated_member_use
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                // ignore: deprecated_member_use
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Color(0xFF23B66F),
                  onPressed: () => print('Upload photo'),
                  child: Icon(
                    Icons.add,
                    size: 35.0,
                    color: Colors.white,
                  ),
                ),
              ),
              // ignore: deprecated_member_use
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                // ignore: deprecated_member_use
                child: FlatButton(
              
               
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) =>  HomeScreen()));
                  },
                  child: Icon(
                    Icons.chat,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              // ignore: deprecated_member_use
              title: Text(''),
            ),
            
                BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                // ignore: deprecated_member_use
                child: FlatButton(
              
               
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) =>  PerfilPessoal()));
                  },
                  child: Icon(
                    Icons.person_outline,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              // ignore: deprecated_member_use
              title: Text(''),
            ),


          ],
        ),
      ),
    );
  }
}