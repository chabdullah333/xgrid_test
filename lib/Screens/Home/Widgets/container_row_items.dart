import 'package:flutter/material.dart';

class ContainerWithRowItems extends StatelessWidget {
  ContainerWithRowItems({Key? key, required this.icon, required this.text})
      : super(key: key);
  IconData icon;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.081,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.042,
              right: MediaQuery.of(context).size.width * 0.042),
          child: Row(
            children: [
              Icon(icon),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.042,
              ),
              Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width * 0.050),
              ),
              const Spacer(),
              const Icon(Icons.arrow_forward_ios_rounded),
            ],
          ),
        ),
      ),
    );
  }
}
