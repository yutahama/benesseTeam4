import 'package:benesseteam4/model/backend.dart';
import 'package:benesseteam4/model/title.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final String question;
  final List<int> ansIdList;
  final List<int> anslist;

  runApp(new MaterialApp(home: title()));
}
