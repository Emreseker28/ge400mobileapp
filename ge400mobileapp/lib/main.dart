import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:ge400mobileapp/HomePage.dart';
import 'package:ge400mobileapp/fileUpload.dart';
import 'package:ge400mobileapp/login.dart';
import 'package:ge400mobileapp/widgets/button_widget.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'api/firebase_api.dart';
import 'firebase_options.dart';
import 'navigator.dart';


final navigatorKey = GlobalKey<NavigatorState>();
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: HomePage()),
      ],
      child: MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
          title: 'KHAS Student Portal',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: fileUpload()),
    );
  }
}

class navigator extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
    body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot){
        if(snapshot.hasData){
          return NavigationScreen();
        }else {
          return Login();
        }
        },
    ),
  );
}

