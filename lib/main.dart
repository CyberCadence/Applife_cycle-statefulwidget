 import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {@override
  void didChangeAppLifecycleState(AppLifecycleState state) {
     
    super.didChangeAppLifecycleState(state);
    print(state);
  }

@override
void initState() { 
  super.initState();
  WidgetsBinding.instance.addObserver(this); //this means observer active for current class only
}

@override
void dispose() { 
  super.dispose();
  WidgetsBinding.instance.removeObserver(this);
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
