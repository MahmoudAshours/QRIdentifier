import 'package:flutter/material.dart';

import 'package:qr_flutter/qr_flutter.dart';

class QrResult extends StatelessWidget {
  final result;
  const QrResult({Key key, this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffff1744),
      ),
      body: Center(
        child: QrImage(
          data: this.result.toString(),
          version: QrVersions.auto,
          size: 200.0,
          
        ),
      ),
    );
  }
}
