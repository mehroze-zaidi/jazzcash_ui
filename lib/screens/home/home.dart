import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jazzcash_ui/screens/home/widgets/my_jazzcash_view.dart';
import 'package:jazzcash_ui/screens/home/widgets/top_picks_view.dart';
import 'package:jazzcash_ui/widgets/button_widget.dart';
import 'package:jazzcash_ui/widgets/button_with_leading_icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with TickerProviderStateMixin {
  late ScrollController scrollController;

  @override
  void initState() {


    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverPersistentHeader(
              delegate: MySliverAppBarDelegate(
                  expandedHeight: 240.h, collapsedHeight: 140.h),
              pinned: true),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
              child: Column(children: [
                const SizedBox(
                  height: 10,
                ),
                const MyJazzCashView(),
                const SizedBox(
                  height: 45,
                ),
                const TopPicksView(),
                const SizedBox(
                  height: 45,
                ),
                SizedBox(
                  height: 170.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Loyalty Programs',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 1,
                                      offset: Offset(0, 1))
                                ]),
                            width: MediaQuery.of(context).size.width * 0.83,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 26.0, horizontal: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'Total Earnings',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            '0 PTS ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      const Icon(
                                        Icons.wine_bar_sharp,
                                        size: 50,
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),

                                  // SizedBox(width:60,child: const LinearProgressIndicator())
                                  Container(
                                    height: 6,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey[200]),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),

                                  const Text(
                                    'Earn More Points Via QR transaction',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Invite And Earn',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 1,
                                      offset: Offset(0, 1))
                                ]),
                            width: MediaQuery.of(context).size.width * 0.83,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 26.0, horizontal: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'Total Earnings',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            '0 PTS ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      const Icon(
                                        Icons.currency_bitcoin,
                                        size: 50,
                                        color: Colors.amber,
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),

                                  // SizedBox(width:60,child: const LinearProgressIndicator())
                                  Container(
                                    height: 6,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey[200]),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),

                                  const Text(
                                    'Earn More Points Via QR transaction',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Latest Updates',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 1,
                                  offset: Offset(0, 1))
                            ]),
                        width: MediaQuery.of(context).size.width * 0.83,
                        height: 160,
                        child: Image.network(
                          'https://www.jazzcash.com.pk/assets/uploads/2022/03/Jazz-Cash-Raast-Bano-ID.jpg',
                          fit: BoxFit.fill,
                        )),
                    const SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}

class MySliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  double expandedHeight;
  double collapsedHeight;

  double flexibleSpaceHeight = 0;
  double buttonsHeight = 0;
  double userNameOpacity = 1.0;

  double qrIconScale = 1.0;
  double qrIconNegativeX = 0.0;
  double qrIconPositionY = 0.0;

  double amountPositionX = 0.0;
  double amountPositionY = 0.0;

  MySliverAppBarDelegate(
      {required this.expandedHeight, required this.collapsedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    _handleWidgetsAnimation(shrinkOffset);

    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(35),
        ),
      ),
      child: Stack(
        children: [
          AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: const Text('JazzCash'),
            centerTitle: false,
            actions: const [
              Icon(Icons.help_outline_rounded),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.notifications_none_rounded)
            ],
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            top: expandedHeight - 70,
            child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonWithLeadingIcon(
                      btnColor: Colors.red[800],
                      btnText: 'Add Money',
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 15),
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(30),
                      btnClick: () {},
                    ),
                    ButtonWithLeadingIcon(
                      btnColor: Colors.grey[600],
                      btnText: 'My Account',
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 15),
                      icon: const Icon(
                        Icons.notes,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(30),
                      btnClick: () {},
                    ),
                  ],
                )),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            top: expandedHeight - 180,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text('MZ'),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Opacity(
                            opacity: userNameOpacity,
                            child: const Text(
                              'Mehroze',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          )
                        ],
                      ),
                      Transform.translate(
                        offset: Offset(qrIconNegativeX, qrIconPositionY),
                        child: Transform.scale(
                          alignment: Alignment.center,
                          scale: qrIconScale,
                          child: const Icon(
                            Icons.qr_code,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Transform.translate(
                        offset: Offset(amountPositionX, amountPositionY),
                        child: const Text('Rs. 13,0000',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w800)),
                      ),
                      Transform.translate(
                        offset: Offset(amountPositionX, amountPositionY),
                        child: const Icon(
                          Icons.refresh_rounded,
                          color: Colors.amber,
                          size: 25,
                        ),
                      ),
                      ButtonWidget(
                        btnColor: Colors.grey[800],
                        verticalPadding: 0,
                        btnClick: () {},
                        btnText: 'Load',
                        textStyle: const TextStyle(color: Colors.amber),
                        borderRadius: BorderRadius.circular(8),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => collapsedHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  _handleWidgetsAnimation(double offset) {
    qrIconScale = (offset / expandedHeight) - 1;

    qrIconNegativeX = -offset;
    qrIconPositionY = -offset + (offset / 1.1);

    amountPositionX = offset / 5.6;
    amountPositionY = (-offset + (offset / 2)) / 2.45;

    userNameOpacity = 1 - offset / expandedHeight;
  }
}
