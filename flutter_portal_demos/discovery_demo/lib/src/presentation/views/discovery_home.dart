// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:discovery_demo/src/presentation/widgets/discovery.dart';
import 'package:flutter/material.dart';

class DiscoveryHome extends StatefulWidget {
  @override
  _DiscoveryHomeState createState() => _DiscoveryHomeState();
}

class _DiscoveryHomeState extends State<DiscoveryHome> {
  bool showDiscovery = false;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Discovery example')),
      body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('You have clicked the button this many times:'),
                Text('$count', style: Theme.of(context).textTheme.headline4,),
                ElevatedButton(
                  onPressed: () => setState(() => showDiscovery = true),
                  child: const Text('Show discovery'),
                ),
              ],
            ),
          ),
          floatingActionButton: Discovery(
            visible: showDiscovery,
            description: const Text('Click to increment the counter'),
            onClose: () => setState(() => showDiscovery = false),
            child: FloatingActionButton(
              onPressed: _increment,
              child: const Icon(Icons.add),
            ),
          ),
        
    );
  }

  void _increment() {
    setState(() {
      showDiscovery = false;
      count++;
    });
  }
}
