import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';

// FirebaseFirestore firestore = FirebaseFirestore.instance;
// FirebaseApp secondaryApp = Firebase.app('SecondaryApp');
// FirebaseFirestore firesore = FirebaseFirestore.instanceFor(app: secondaryApp);

class AddUser extends StatelessWidget {
  final String question;
  final List<int> ansIdList;
  final List<int> anslist;

  const AddUser({
    super.key,
    required this.question,
    required this.ansIdList,
    required this.anslist,
  });

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    // TODO: implement build
    Future<void> addUser() {
      return users
          .add({
            'question': question,
            ansIdList: anslist, // Stokes and Sons
          })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }

    return TextButton(
      onPressed: addUser,
      child: Text(
        "Add User",
      ),
    );
  }
}
