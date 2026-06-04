import 'package:flutter/material.dart';
import 'package:pdfrx/pdfrx.dart';

class PdfViewerPage extends StatelessWidget {
  final int initalpage;
  final String pdfPath;
  final String title;

  const PdfViewerPage({super.key, required this.pdfPath , required this.initalpage,required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text(title)),
      body: PdfViewer.file(pdfPath,initialPageNumber: initalpage), // Use .file for local files
    );
  }
}