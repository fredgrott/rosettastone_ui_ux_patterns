// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:contextual_menus/src/presentation/widgets/contextual_menu_example.dart';
import 'package:flutter/material.dart';

class ContextualMenuHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contextual Menu'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        alignment: Alignment.centerLeft,
        child: const ContextualMenuExample(),
      ),
    );
  }
}
