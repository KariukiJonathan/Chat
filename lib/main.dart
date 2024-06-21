// debugShowCheckedModeBanner: false,
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/chat_list_screen.dart';
import 'package:whatsapp_clone/screens/login_screen.dart';
import 'package:whatsapp_clone/screens/profile_screen.dart';
import 'package:whatsapp_clone/screens/settings_screen.dart';
import 'package:whatsapp_clone/screens/splash_screen.dart';
import 'package:whatsapp_clone/screens/calls_screen.dart';
import 'package:whatsapp_clone/screens/register_screen.dart';


void main() {
  runApp(WhatsAppClone());
}

class WhatsAppClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Clone',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(), // Set SplashScreen as the initial screen
      routes: {
        ChatListScreen.routeName: (ctx) => ChatListScreen(),
        CallsScreen.routeName: (ctx) => CallsScreen(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
        ProfileScreen.routeName: (ctx) => ProfileScreen(),
        RegisterScreen.routeName: (ctx) => RegisterScreen(),
        SettingsScreen.routeName: (ctx) => SettingsScreen(),
        // Use MaterialPageRoute in ChatListScreen for ChatScreen
      },
    );
  }
}