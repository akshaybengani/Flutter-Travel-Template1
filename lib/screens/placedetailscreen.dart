import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_brandzgarage/providers/placeProvider.dart';

class PlaceDetailScreen extends StatelessWidget {
  static const routename = "/placedetail";

  @override
  Widget build(BuildContext context) {
    var placeItem =
        Provider.of<PlaceProvider>(context, listen: false).currentItem;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: placeItem.placeid,
                child: Image.asset(
                  placeItem.imgUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(height: 10),
                Divider(
                  endIndent: 150,
                  indent: 150,
                  thickness: 5,
                  color: Colors.white54,
                ),
                Container(
                  //decoration:
                  //    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  margin: EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("assets/images/akshay.JPG",
                            fit: BoxFit.cover),
                      ),
                    ),
                    title: Text(
                      "Akshay Bengani",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    subtitle: Text(
                      "Organizer",
                      style: TextStyle(color: Colors.grey),
                    ),
                    trailing: FlatButton(
                      onPressed: () {},
                      color: Colors.grey[700],
                      child: Text('Follow'),
                    ),
                  ),
                ),
                Container(
                  width: 500,
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[900],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 10),
                      Divider(
                        endIndent: 150,
                        indent: 150,
                        thickness: 5,
                        color: Colors.white54,
                      ),
                      Container(
                        margin: EdgeInsets.all(16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              placeItem.eventdate,
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.indigo),
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    placeItem.title,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.grey[600],
                                  radius: 25,
                                  child: IconButton(
                                    color: Colors.grey[600],
                                    icon: Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: 25,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              placeItem.placeLocation.address,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 200,
                              child: Image.asset(
                                "assets/images/map.jpg",
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
