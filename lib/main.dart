import 'package:flutter/material.dart';
import 'package:flutter_gridview_delegate/gridview_delegate_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('setting mainAxisExtent to 100'),
            ElevatedButton(
              onPressed: () => jumpToGridViewDelegatePage(
                fixedCrossAxisCountType: true,
                mainAxisExtent: 100,
              ),
              child: const Text('SliverGridDelegateWithFixedCrossAxisCount'),
            ),
            ElevatedButton(
              onPressed: () => jumpToGridViewDelegatePage(
                fixedCrossAxisCountType: false,
                mainAxisExtent: 100,
              ),
              child: const Text('SliverGridDelegateWithMaxCrossAxisExtent'),
            ),
            const SizedBox(height: 50),
            const Text('setting mainAxisExtent to 0'),
            ElevatedButton(
              onPressed: () => jumpToGridViewDelegatePage(
                fixedCrossAxisCountType: true,
                mainAxisExtent: 0,
              ),
              child: const Text('SliverGridDelegateWithFixedCrossAxisCount'),
            ),
            ElevatedButton(
              onPressed: () => jumpToGridViewDelegatePage(
                fixedCrossAxisCountType: false,
                mainAxisExtent: 0,
              ),
              child: const Text('SliverGridDelegateWithMaxCrossAxisExtent'),
            ),
            const SizedBox(height: 50),
            const Text('setting mainAxisExtent to -100'),
            ElevatedButton(
              onPressed: () => jumpToGridViewDelegatePage(
                fixedCrossAxisCountType: true,
                mainAxisExtent: -100,
              ),
              child: const Text('SliverGridDelegateWithFixedCrossAxisCount'),
            ),
            ElevatedButton(
              onPressed: () => jumpToGridViewDelegatePage(
                fixedCrossAxisCountType: false,
                mainAxisExtent: -100,
              ),
              child: const Text('SliverGridDelegateWithMaxCrossAxisExtent'),
            ),
          ],
        ),
      ),
    );
  }

  void jumpToGridViewDelegatePage({
    bool fixedCrossAxisCountType = true,
    double mainAxisExtent = -100,
  }) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => GridViewDelegatePage(
          fixedCrossAxisCountType: fixedCrossAxisCountType,
          mainAxisExtent: mainAxisExtent,
        ),
      ),
    );
  }
}
