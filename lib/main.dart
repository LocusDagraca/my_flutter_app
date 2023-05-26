import 'package:flutter/material.dart';
import 'package:my_flutter_app/welcome_setup_page.dart';
import 'my_bottom_nav_bar.dart';
import 'test_page.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Locus Demo',
      theme: myTheme,
      routes: {
        '/test_page': (context) => TestPage(),
        '/welcome_setup': (context) => WelcomeSetupPage(),
      },
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: const MyBottomNavigationBar(), // use MyBottomNavigationBar as the home widget
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  // This widget: home page of your application. It is stateful -> it has a
  // State object (defined below) that contains fields that affect how it looks.

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
                onPressed: (){Navigator.pushNamed(context, '/welcome_setup');},
                child: const Text('Go to Welcome page'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
