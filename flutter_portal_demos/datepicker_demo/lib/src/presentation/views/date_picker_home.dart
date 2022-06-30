// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:datepicker_demo/src/presentation/widgets/date_picker_usage_example.dart';
import 'package:flutter/material.dart';

class DatePickerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Example')),
      body: LayoutBuilder(
        builder: (_, __,) {
          return LayoutBuilder(builder: (_, __,) {
            return const DatePickerUsageExample();
          });
        },
      ),
    );
  }
}
