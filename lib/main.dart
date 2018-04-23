import 'package:flutter/material.dart';
import './ui/lotto.dart';

void main(){
  runApp(
    new MaterialApp(
      title: "Lotto",
      locale: const Locale('th', 'TH'),
      theme: new ThemeData(fontFamily: 'SukhumvitSet'),
      home: new Lotto(),
    )
  );
}