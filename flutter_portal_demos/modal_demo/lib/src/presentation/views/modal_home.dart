// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:modal_demo/src/presentation/widgets/modal.dart';

class ModalHome extends StatefulWidget {
  @override
  _ModalHomeState createState() => _ModalHomeState();
}

class _ModalHomeState extends State<ModalHome> {
  bool showModal = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Discovery example')),
      body: Center(
        child: Modal(
          visible: showModal,
          modal: const Dialog(
            child: Text('Hello world'),
          ),
          onClose: () => setState(() => showModal = false),
          child: ElevatedButton(
            onPressed: () => setState(() => showModal = true),
            child: const Text('Show modal'),
          ),
        ),
      ),
    );
  }
}
