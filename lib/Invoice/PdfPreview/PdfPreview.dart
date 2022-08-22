
import 'package:create_pdf/Invoice/PdfExport/PdfExport.dart';
import 'package:create_pdf/Modal/userModal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:printing/printing.dart';

class PdfPreviewPage extends StatelessWidget {
  final List<userModal?>? invoice;
  const PdfPreviewPage({Key? key, required this.invoice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Preview'),
      ),
      body: PdfPreview(
        build: (context) => makePdf(invoice),
      ),
    );
  }
}
