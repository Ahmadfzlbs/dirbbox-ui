import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SharePage extends StatefulWidget {
  const SharePage({Key? key}) : super(key: key);

  @override
  State<SharePage> createState() => _SharePageState();
}

class _SharePageState extends State<SharePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Share"),
        backgroundColor: Color(0xFF567DF4),
        centerTitle: true,
      ),
    );
  }
}
