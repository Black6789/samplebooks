import 'package:flutter/material.dart';
import 'package:samplebooks/BooksList.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}
int x=0;
class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text(
            'Football Player',
            style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.white),
          ),backgroundColor: Colors.blueAccent,centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,

                ),
                child: Text(
                  'Logout List',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),

              ),
              ListTile(
                title: Text('My books'),
                onTap: ()  async {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => bookl()),
                  );
                },
              ),
              ListTile(
                title: Text('For sale'),
                onTap: ()  async {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => bookl()),
                  );
                },
              ),
              ListTile(
                title: Text('for exchange'),
                onTap: ()  async {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => bookl()),
                  );
                },
              ),
              ListTile(
                title: Text('Logout'),
                onTap: ()  async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => bookl()),
                  );
                },
              ),
            ],
          ),
        ),
        body: Column(
              children: [
                SizedBox(height: 10,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      // Wrap the ListView.builder with a SizedBox to provide a finite width
                      SizedBox(
                        height: 30,
                        width: MediaQuery.of(context).size.width,

                        child: ListView.builder(
                          reverse: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: x == 3 ? Colors.blueAccent : Colors.grey,
                                ),
                                onPressed: () {
                                  setState(() {
                                    x = 3;
                                  });
                                },
                                child: Text("Romance"),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),

                ),
                SizedBox(height: 20,),
                GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemCount:10,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                         // Navigator.push(
                            //context,
                            //MaterialPageRoute(builder: (context) => sbook(title: book[index].title, desc: book[index].description, afname: book[index].aname, alname: book[index].alname, cname: book[index].cname, cover: book[index].cover, pdf:book[index].pdf)
                           // ),
                         // );
                        },
                        child: Container(

                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                          ) ,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                           // child: Image.network(
                              //'https://viewless-disasters.000webhostapp.com/${book[index].cover}', fit: BoxFit.cover, width: 100, height: 100,
                           // ),
                          ),

                        ),

                      );






                    }
                )
              ],
            )
        );
  }
}
