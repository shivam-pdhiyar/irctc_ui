import 'package:flutter/material.dart';

class BookTrainTab extends StatefulWidget {
  const BookTrainTab({super.key});

  @override
  State<BookTrainTab> createState() => _BookTrainTabState();
}

class _BookTrainTabState extends State<BookTrainTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios),
        title: Text('Book Ticket',style: TextStyle(color: Colors.black),),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
