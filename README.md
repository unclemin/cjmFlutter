# wether

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
## APPbar
        appBar: AppBar(
            title: Text("demo"),
            centerTitle: true,
            leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed:null,
            ),
            actions: <Widget>[
                IconButton(
                icon: Icon(Icons.search),
                onPressed:(){},
                ),
            ],
         ),
        <!-- 这是二级菜单 -->
         new PopupMenuButton<String>(
            icon: Icon(Icons.menu),
            itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                new PopupMenuItem(
                  value: "id",
                  child: Text("data"),
                )
            ],
          )

          38
          48
          90