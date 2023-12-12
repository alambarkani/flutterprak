import 'package:flutter/material.dart';

Widget listData({img, required text, required BuildContext context}){
  return Card(
    margin: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
    child: Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(
                image: NetworkImage(img),
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            text,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          _buildElevatedButton(context)
        ],
      ),
    ),
  );
}

Widget _buildElevatedButton(BuildContext context){
  return ElevatedButton(
    onPressed: (){
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          content: const Text("This is a popup menu"),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      );
  }, 
  child: Text("Add to Card"));
}