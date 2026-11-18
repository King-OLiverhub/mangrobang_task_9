
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mangrobang_task_9/Login.dart';
import 'package:mangrobang_task_9/auth_service.dart';
import 'package:mangrobang_task_9/crud_service.dart';

class HomePage extends StatelessWidget {
  final CrudService service = CrudService();
  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController qtyCtrl = TextEditingController();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Firebase Mangrobang'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              AuthService().signOut();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => LoginPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}