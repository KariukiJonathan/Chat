import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  static const routeName = '/calls';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Calls'),
      //   actions: [
      //     IconButton(
      //       icon: Icon(Icons.search),
      //       onPressed: () {
      //         // Implement search functionality
      //       },
      //     ),
      //     IconButton(
      //       icon: Icon(Icons.settings),
      //       onPressed: () {
      //         Navigator.of(context).pushNamed('/settings');
      //       },
      //     ),
      //   ],
      // ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (ctx, index) {
          return ListTile(
            leading: CircleAvatar(child: Icon(Icons.call)),
            title: Text('Call $index'),
            subtitle: Text('Yesterday, 9:00 PM'),
          );
        },
      ),
    );
  }
}
