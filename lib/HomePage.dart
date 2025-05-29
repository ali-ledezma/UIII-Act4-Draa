import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        elevation: 0.2,
        title: Text("LEDEZMA"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 44, 192, 172),
        actions: <Widget>[
          InkWell(
            onTap: null,
            child: new IconButton(
              icon: Icon(
                Icons.search,
                color: const Color.fromARGB(255, 74, 43, 252),
              ), onPressed: () {  },
            ),
          ),
          InkWell(
            onTap: null,
            child: new IconButton(
              icon: Icon(
                Icons.settings,
                color: const Color.fromARGB(255, 4, 58, 46),
              ), onPressed: () {  },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: const Color.fromARGB(255, 17, 101, 104)), 
              accountName: Text("Diego Ali 1229"),
              accountEmail: Text("a.22308051281229@gmail.com"),
              currentAccountPicture: GestureDetector(
             child: CircleAvatar(
            radius: 120.0,
            backgroundImage: NetworkImage(
                "https://raw.githubusercontent.com/ali-ledezma/imagenes_tabla/refs/heads/main/cliente4.png"),
          ),

              ),
              ),
                        InkWell(
              onTap: (){},
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/home");},
                leading: Icon(Icons.home, color: Colors.pink),
                title: Text("Home Page"),
              ),
            ),


          ],
        ),
      ),
    );
  }
}