import 'dart:typed_data';

import 'package:create_pdf/Modal/userModal.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;

Future<Uint8List> makePdf(List<userModal?>? invoice) async {
  final pdf = Document();
  pdf.addPage(
    MultiPage(
      build: (context) => <Widget>[
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("Data Table",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ],
            ),
            Container(height: 50),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Id',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Text(
                    'Name',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  flex: 1,
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Text(
                    'User Name',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  flex: 1,
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Text(
                    'Email',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  flex: 1,
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Text(
                    'Mobile',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  flex: 1,
                ),
              ],
            ),
            ...invoice!.map(
              (e) => Row(
                children: [
                  Container(height: 75),
                  Expanded(
                    child: Text("${e?.id}", style: TextStyle(fontSize: 10)),
                    flex: 1,
                  ),
                  Expanded(
                    child:
                        Text("${e?.name}", style: TextStyle(fontSize: 10)),
                    flex: 1,
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text("${e?.username}", style: TextStyle(fontSize:10)),
                    flex: 1,
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text("${e?.email}", style: TextStyle(fontSize: 10)),
                    flex: 1,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text("${e?.phone}", style: TextStyle(fontSize: 10)),
                    flex: 1,
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    ),
  );
  return pdf.save();
}

Widget PaddedText(
  final String text, {
  final TextAlign align = TextAlign.left,
}) =>
    Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        text,
        textAlign: align,
      ),
    );
