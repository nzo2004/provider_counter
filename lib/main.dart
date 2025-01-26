import 'package:flutter/material.dart';
import 'package:provider_counter/provider/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Click_Notifier(),
      lazy: false,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(title: 'Provider Click'),
      ),
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
    return SafeArea(
      child: Scaffold(
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
                Consumer<Click_Notifier>(
                  builder: (context, value, child) {
                    return Text(
                      '${Provider.of<Click_Notifier>(context).counter}',
                      style: Theme.of(context).textTheme.headlineMedium,
                    );
                  },
                )
              ],
            ),
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 5, 10),
                child: FloatingActionButton(
                  onPressed: () {
                    Provider.of<Click_Notifier>(context, listen: false)
                        .increment();
                  },
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 5, 10),
                child: FloatingActionButton(
                  onPressed: () {
                    Provider.of<Click_Notifier>(context, listen: false)
                        .decrease();
                  },
                  tooltip: 'Increment',
                  child: const Icon(Icons.remove),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 5, 8),
                child: FloatingActionButton(
                  onPressed: () {
                    Provider.of<Click_Notifier>(context, listen: false).reset();
                  },
                  tooltip: 'Increment',
                  child: const Icon(Icons.restart_alt_outlined),
                ),
              ),
            ],
          )),
    );
  }
}
