import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  final int initialValue;

  const AccountPage({Key? key, required this.initialValue}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  int? _mutableValue;

  @override
  Widget build(BuildContext context) {
    _mutableValue = widget.initialValue;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const Text(
                'Wintering.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Column(
                  children: [
                    const Text(
                      'Hi there!',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Can\'t find the movies you\'re looking for?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.blueAccent,
                      ),
                      child: const Text(
                        'Let us know!',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    const Divider(),
                    GestureDetector(
                      child: Text(
                        'Log out $_mutableValue times',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
