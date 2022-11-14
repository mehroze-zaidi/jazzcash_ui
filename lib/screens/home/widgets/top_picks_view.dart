import 'package:flutter/material.dart';

class TopPicksView extends StatelessWidget {
  const TopPicksView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Top Picks For You',
          style: TextStyle(
              color: Colors.grey[900],
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 10,
        ),
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
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 1,
                              offset: Offset(0, 1))
                        ]),
                    child: const Padding(
                      padding: EdgeInsets.all(22.0),
                      child: Icon(Icons.send_outlined),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Money Transfer',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w300),
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
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 1,
                              offset: Offset(0, 1))
                        ]),
                    child: const Padding(
                      padding: EdgeInsets.all(22.0),
                      child: Icon(Icons.sticky_note_2_sharp),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Utility Bills',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w300),
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
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 1,
                              offset: Offset(0, 1))
                        ]),
                    child: const Padding(
                      padding: EdgeInsets.all(22.0),
                      child: Icon(Icons.local_offer_outlined),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Mobile Load & Packages',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w300),
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
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 1,
                              offset: Offset(0, 1))
                        ]),
                    child: const Padding(
                      padding: EdgeInsets.all(22.0),
                      child: Icon(Icons.money),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Finance and Banking',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w300),
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
