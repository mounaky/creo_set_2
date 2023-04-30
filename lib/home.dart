import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
            title: Text('Google'
                ' News',
              style: TextStyle(color: Colors.black),
            ),

            // centerTitle: true,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
              color: Colors.black,
            ),
            actions: [
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.apps),
                color: Colors.black,
              ),
              IconButton(
                onPressed: () {},
                icon:Icon(Icons.search),
                color: Colors.black,
              ),
              TextButton(onPressed: () {},
                child: Text('signIn'),

              ),

            ],
            backgroundColor: Colors.grey[400],
          ),
          bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.grey[400],
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,size: 30),
                label: 'Home',
              ),
              BottomNavigationBarItem(icon: Icon(Icons.favorite,color: Colors.black,size: 30),
                label: 'fav',
              ),
              BottomNavigationBarItem(icon: Icon
                (Icons.location_on,color: Colors.black,size: 30,),
                label: 'local',
              ),
            ],
          ),
          body: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(40.0),
                child: Image(
                  width: 500,
                  image:NetworkImage('https://cricshots.com/wp-content/uploads/2018/04/RCB-10.jpg'),
                ),
              ),

              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50.0,00.0,50.0,00.0),
                  child: const Text.rich(
                    TextSpan(
                      text: 'Royal Challengers Bangalore (often abbreviated as RCB) are a franchise cricket team based in Bengaluru, Karnataka, that plays in the Indian Premier League (IPL).,',style: TextStyle( fontWeight: FontWeight.bold), // default text style
                      children: <TextSpan>[
                        TextSpan(text: 'Are a franchise cricket team based in Bengaluru, Karnataka, that plays in the Indian Premier League (IPL).It was founded in 2008 by United Spirits and named after the companys liquor brand Royal Challenge.Royal Challengers Bangalore has the strongest fan base, the team has never failed to entertain'
                            ' their fans despite a certain heartbreak at the end of each IPL edition.', style: TextStyle(fontStyle: FontStyle.italic)),
                        // TextSpan(text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0,20.0,30.0,00.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      // controller: Center,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(labelStyle:
                        TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        labelText: 'Full coverage of this story',
                        prefixIcon: Icon(Icons.newspaper),
                         border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
    }
}

