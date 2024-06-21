import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

int _num = 0;

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    ColorScheme colorScheme = theme.colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Koena's App",
          style: TextStyle(
            color: colorScheme.onPrimary,
            fontSize: 24,
          ),
        ),
        backgroundColor: colorScheme.primary,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton.filled(
                onPressed: () {
                  setState(() => _num--);
                  //Decrease count
                  HapticFeedback.lightImpact();
                },
                icon: const Icon(Icons.remove),
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                onLongPress: () {
                  Clipboard.setData(ClipboardData(text: _num.toString()));
                  HapticFeedback.lightImpact();
                },
                child: Container(
                  width: 200,
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: colorScheme.primaryContainer,
                  ),
                  child: Center(
                      child: Text(
                    _num.toString(),
                    style: TextStyle(
                      fontSize: 50,
                      color: colorScheme.onPrimaryContainer,
                    ),
                  )),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              IconButton.filled(
                onPressed: () {
                  setState(() => _num++);
                  //Increase count
                  HapticFeedback.lightImpact();
                },
                icon: const Icon(Icons.add),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          TextButton(
            onPressed: () {
              setState(() => _num = 0);
              HapticFeedback.lightImpact();
            },
            child: const Text(
              'Reset count',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
