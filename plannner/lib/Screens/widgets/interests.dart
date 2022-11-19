// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Interest extends StatefulWidget {
  String interest;

  Function() onLmfao;
  Interest({
    Key? key,
    required this.interest,
    required this.onLmfao,
  }) : super(key: key);

  @override
  State<Interest> createState() => _InterestState();
}

class _InterestState extends State<Interest> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
          widget.onLmfao();
        });
      },
      child: Container(
        width: 120,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(20),
          color: isSelected ? Colors.blue : Colors.transparent,
        ),
        child: Center(
          child: Text(
            widget.interest,
            style: TextStyle(
                color: isSelected ? Colors.white : Colors.blue, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
