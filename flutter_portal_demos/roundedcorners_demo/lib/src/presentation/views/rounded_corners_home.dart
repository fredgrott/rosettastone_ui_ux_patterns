// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:roundedcorners_demo/src/presentation/widgets/rounded_corners_example.dart';

class RoundedCornersHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            title: const Text('Example'),
          ),
          body: const Padding(
            padding: EdgeInsets.all(16),
            child: RoundedCornersExample(),
          ),
        
    );
  }
}
