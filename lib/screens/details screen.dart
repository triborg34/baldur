import 'package:baldur/screens/pdf_viewer_page.dart';
import 'package:flutter/material.dart';

class Details_screen extends StatelessWidget {
  Details_screen({
    super.key,
    required this.dec,
    required this.page,
    required this.title,
    required this.pdfLocalPath,
  });
  final String dec;
  final String title;
  final int page;
  final String pdfLocalPath;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () => Navigator.pop(context),
          ),
          title: Text(title, style: TextStyle(color: Colors.white)),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2.0),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text(
                      dec,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Center(
                  child: ElevatedButton(

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => PdfViewerPage(
                                pdfPath: pdfLocalPath,
                                initalpage: page+1,
                                title: title,
                              ),
                        ),
                      );
                    },
                    child: Text("Load This Page",style: TextStyle(color: Colors.black),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
