import 'package:counter_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


// Counter Provider - keep this
class CounterProvider extends ChangeNotifier {
  int _counter = 0;
  
  int get counter => _counter;
  
  void increment() {
    _counter++;
    notifyListeners();
  }
  
  void decrement() {
    _counter--;
    notifyListeners();
  }
  
  void reset() {
    _counter = 0;
    notifyListeners();
  }
}

// Singleton for normal counter state
class NormalCounterState {
  static final NormalCounterState _instance = NormalCounterState._internal();
  factory NormalCounterState() => _instance;
  NormalCounterState._internal();

  int counter = 0;
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Provider initialized at app level to persist state
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: MaterialApp(
        title: 'Counter App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
        home: const HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}