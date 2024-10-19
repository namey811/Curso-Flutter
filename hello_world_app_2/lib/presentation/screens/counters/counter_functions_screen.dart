import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Tecnar APP')),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  clickCount = 0;
                });
              },
            )
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$clickCount',
                style:
                    const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),
              Text('Click${clickCount == 1 ? '' : 's'}',
                  style: const TextStyle(fontSize: 25))
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.refresh_rounded,
              onPressed: () {
                setState(() {
                  clickCount = 0;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              icon: Icons.plus_one_rounded,
              onPressed: () {
                setState(() {
                  clickCount++;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              icon: Icons.exposure_minus_1_rounded,
              onPressed: () {
                setState(() {
                  if (clickCount == 0) return;
                  clickCount--;
                });
              },
            )
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
