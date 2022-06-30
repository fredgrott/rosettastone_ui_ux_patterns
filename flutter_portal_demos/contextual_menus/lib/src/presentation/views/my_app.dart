// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:contextual_menus/src/presentation/views/contextual_menu_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Portal(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Contextual Menus',
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.light,
        home: ContextualMenuHome(),
      ),
    );

    
  }
}
