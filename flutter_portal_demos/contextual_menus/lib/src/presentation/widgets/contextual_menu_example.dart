// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:contextual_menus/src/presentation/widgets/menu.dart';
import 'package:contextual_menus/src/presentation/widgets/modal_entry.dart';
import 'package:flutter/material.dart';

class ContextualMenuExample extends StatefulWidget {
  const ContextualMenuExample({Key? key}) : super(key: key);

  @override
  _ContextualMenuExampleState createState() => _ContextualMenuExampleState();
}

class _ContextualMenuExampleState extends State<ContextualMenuExample> {
  bool _showMenu = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ModalEntry(
        visible: _showMenu,
        onClose: () => setState(() => _showMenu = false),
        childAnchor: Alignment.topRight,
        menuAnchor: Alignment.topLeft,
        menu: const Menu(
          children: [
            PopupMenuItem<void>(
              height: 42,
              child: Text('first'),
            ),
            PopupMenuItem<void>(
              height: 42,
              child: Text('second'),
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: () => setState(() => _showMenu = true),
          child: const Text('show menu'),
        ),
      ),
    );
  }
}
