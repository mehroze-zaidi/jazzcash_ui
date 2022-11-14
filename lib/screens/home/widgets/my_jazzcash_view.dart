import 'package:flutter/material.dart';

class MyJazzCashView extends StatelessWidget {
  const MyJazzCashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My JazzCash',
              style: TextStyle(color: Colors.grey[900], fontSize: 16,fontWeight: FontWeight.w500),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 7),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.edit,size: 15,),
                    Text(
                      'Edit',
                      style: TextStyle(color: Colors.grey[900], fontSize: 14,fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: [const BoxShadow(color: Colors.black26,blurRadius: 1,offset: Offset(0, 1))]),
                    child: const Padding(
                      padding: EdgeInsets.all(22.0),
                      child: Icon(Icons.send_outlined),
                    ),
                  ),
const SizedBox(height: 10,),
                  const Text(
                    'Money Transfer',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.w300),
                  ),

                ],
              ),
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: [const BoxShadow(color: Colors.black26,blurRadius: 1,offset: Offset(0, 1))]),
                    child: const Padding(
                      padding: EdgeInsets.all(22.0),
                      child: Icon(Icons.sticky_note_2_sharp),
                    ),
                  ),
const SizedBox(height: 10,),
                  const Text(
                    'Utility Bills',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.w300),
                  ),

                ],
              ),
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: [const BoxShadow(color: Colors.black26,blurRadius: 1,offset: Offset(0, 1))]),
                    child: const Padding(
                      padding: EdgeInsets.all(22.0),
                      child: Icon(Icons.local_offer_outlined),
                    ),
                  ),
const SizedBox(height: 10,),
                  const Text(
                    'Mobile Load & Packages',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.w300),
                  ),

                ],
              ),
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: [const BoxShadow(color: Colors.black26,blurRadius: 1,offset: Offset(0, 1))]),
                    child: const Padding(
                      padding: EdgeInsets.all(22.0),
                      child: Icon(Icons.money),
                    ),
                  ),
const SizedBox(height: 10,),
                  const Text(
                    'Finance and Banking',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.w300),
                  ),

                ],
              ),
            ),

          ],
        )
      ],
    );
  }
}
