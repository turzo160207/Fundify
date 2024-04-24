import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        decoration: BoxDecoration(color: Colors.deepPurple),
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Wallet",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),),
            ],
          ),
        ),
      ),

    );
  }
}