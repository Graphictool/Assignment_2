import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.cyan),
      darkTheme: ThemeData(primaryColor: Colors.black),
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  mySnackbar(message, context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery'),
        titleSpacing: 10,
        toolbarHeight: 60,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Welcome to My Photo Gallery!',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for photos',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                  icon: Icon(Icons.search),
                ),
              ),
            ),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              spacing: 20,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,

                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Clicked on photo!')),
                    );
                  },
                  child: Stack(

                    //crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Image.network(
                        'https://i1.rgstatic.net/ii/profile.image/958354419634178-1605500907882_Q128/Walid-Dipto-2.jpg',
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),


                      SizedBox(
                        height: 1.0,
                      width: 1.0,

                       ),
                      Text('Photo 1'),

                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Clicked on photo!')),
                    );
                  },
                  child: Stack(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://i1.rgstatic.net/ii/profile.image/958354419634178-1605500907882_Q128/Walid-Dipto-2.jpg',
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 1.0,
                        width: 1.0,
                      ),
                      Text('Photo 2'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Clicked on photo!')),
                    );
                  },
                  child: Stack(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://i1.rgstatic.net/ii/profile.image/958354419634178-1605500907882_Q128/Walid-Dipto-2.jpg',
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 1.0,
                        width: 1.0,
                      ),
                      Text('Photo 3'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Clicked on photo!')),
                    );
                  },
                  child: Stack(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://i1.rgstatic.net/ii/profile.image/958354419634178-1605500907882_Q128/Walid-Dipto-2.jpg',
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 1.0,
                        width: 1.0,
                      ),
                      Text('Photo 4'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Clicked on photo!')),
                    );
                  },
                  child: Stack(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://i1.rgstatic.net/ii/profile.image/958354419634178-1605500907882_Q128/Walid-Dipto-2.jpg',
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 1.0,
                        width: 1.0,
                      ),
                      Text('Photo 5'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Clicked on photo!')),
                    );
                  },
                  child: Stack(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://i1.rgstatic.net/ii/profile.image/958354419634178-1605500907882_Q128/Walid-Dipto-2.jpg',
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 1.0,
                        width: 1.0,
                      ),
                      Text('Photo 6'),
                    ],
                  ),
                ),

                // Add more photo buttons here...
              ],
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  title: Text('Sample Photo 1'),
                  subtitle: Text('Category 1'),
                  leading: Icon(Icons.photo),
                  tileColor: Colors.grey.shade300,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
                ListTile(
                  title: Text('Sample Photo 2'),
                  subtitle: Text('Category 2'),
                  leading: Icon(Icons.photo),
                  tileColor: Colors.grey.shade300,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
                ListTile(
                  title: Text('Sample Photo 3'),
                  subtitle: Text('Category 3'),
                  leading: Icon(Icons.photo),
                  tileColor: Colors.grey.shade300,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
                IconButton(
                  iconSize: 40,
                  alignment: Alignment.center,
                  color: Colors.blue,
                  padding: EdgeInsets.all(15.0),
                  icon: Icon(Icons.add),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Photos Uploaded Successfully!')),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
