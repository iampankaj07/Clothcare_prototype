import 'package:flutter/material.dart';
import 'package:pankaj_s_application6/core/app_export.dart';

class DashboardScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Container(
          width: 406.h,
          padding: EdgeInsets.symmetric(vertical: 6.v),
          child: Column(
            children: [
              SizedBox(height: 7.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, AppRoutes.clothescaresearchScreen);
                            },
                            child: SizedBox(
                              // height: 35.v,
                              width: MediaQuery.of(context).size.width / 2,
                              child: Align(
                                alignment: Alignment.center,
                                child: TextFormField(
                                  textAlign: TextAlign.start,
                                  // controller: searchController,
                                  maxLines: 1,
                                  onTap: () {
                                    Navigator.pushNamed(context,
                                        AppRoutes.clothescaresearchScreen);
                                  },
                                  autofocus: false,
                                  style: theme.textTheme.titleSmall,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 2.h, horizontal: 15.h),
                                      fillColor: Color(0xFF97C9DE),
                                      isDense: true,
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.h),
                                        borderSide: BorderSide.none,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.h),
                                        borderSide: BorderSide.none,
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.h),
                                        borderSide: BorderSide.none,
                                      ),
                                      suffixIcon: Icon(Icons.search)),

                                  scrollPadding: EdgeInsets.only(
                                      bottom: MediaQuery.of(context)
                                          .viewInsets
                                          .bottom),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xFF2D9AE9),
                              radius: 30,
                              child: Center(
                                child: Text(
                                  'CC',
                                  style: TextStyle(
                                    color: Color(0xFF0E138E),
                                    fontSize: 35,
                                    fontFamily: 'Rubik Moonrocks',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 30.h,
                            ),
                            Flexible(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '24/7 Support',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Rubik',
                                      fontWeight: FontWeight.bold,
                                      height: 0,
                                    ),
                                  ),
                                  Text(
                                    'Contact us',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Rubik',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(context,
                                          AppRoutes.feedbackformScreen);
                                    },
                                    child: Text(
                                      'Feedback',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Rubik',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, AppRoutes.adminportalScreen);
                              },
                              child: Container(
                                decoration: ShapeDecoration(
                                  color: Color(0xFF0E138E),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25)),
                                ),
                                width: 70,
                                height: 28,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      'Admin',
                                      style: TextStyle(
                                        color: Color(0xFFF3EEFD),
                                        fontSize: 11,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context,
                                    AppRoutes.registrationscreenScreen);
                              },
                              child: Container(
                                decoration: ShapeDecoration(
                                  color: Color(0xFF2D9AE9),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25)),
                                ),
                                width: 70,
                                height: 28,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      'Register',
                                      style: TextStyle(
                                        color: Color(0xFFF3EEFD),
                                        fontSize: 11,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, AppRoutes.loginscreenScreen);
                              },
                              child: Container(
                                decoration: ShapeDecoration(
                                  color: Color(0xFF054371),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25)),
                                ),
                                width: 70,
                                height: 28,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                        color: Color(0xFFF3EEFD),
                                        fontSize: 11,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 430,
                              height: MediaQuery.of(context).size.height / 3,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.dashimg2),
                                  fit: BoxFit.cover,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7)),
                              ),
                            ),
                            Positioned(
                              bottom: 35.h,
                              left: 20.h,
                              child: _buildDonateButton(
                                context,
                                'Donate Now',
                              ),
                            ),
                            Positioned(
                              bottom: 35.h,
                              right: 20.h,
                              child: _buildDonateButton(
                                context,
                                'Request',
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 30),
                        _buildCardlistWidget(),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: SizedBox(
                            width: 394,
                            child: Text(
                              'Clothes for Humanity exists to serve communities. We help families by donating clothing, providing warmth, dignity, and a fresh start. Every donated garment changes lives one at a time. Your donation helps to fund aid efforts, spread hope, and effect positive change. Join us in caring for our communities and making a difference in the lives of those in need."',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Salsa',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: 337,
                          height: 37,
                          child: Center(
                            child: Text(
                              'Privacy Policy| Terms & Conditions| Disclaimer\n© 2023 Clothes Care. All rights reserved.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Salsa',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding _buildCardlistWidget() {
    List<CardItem> cardItems = [
      CardItem(image: ImageConstant.dashimg1, title: "Ways to Give"),
      CardItem(image: ImageConstant.dashimg2, title: 'Ways to get Involved'),
      CardItem(image: ImageConstant.dashimg2, title: 'More ways to Support'),
      CardItem(image: ImageConstant.dashimg2, title: 'Your Impact'),
    ];
    return Padding(
      padding: EdgeInsets.all(8.h),
      child: Wrap(
          runSpacing: 8.v,
          spacing: 8.h,
          children: List<Widget>.generate(
            4,
            (index) => Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: CardListWidget(
                  title: cardItems[index].title, image: cardItems[index].image),
            ),
          )),
    );
  }

  /// Section Widget
  Widget _buildDonateButton(BuildContext context, String button) {
    return InkWell(
      // height: 51.v,
      onTap: () {
        button == "Request"
            ? Navigator.pushNamed(
                context, AppRoutes.donationreqformscreenScreen)
            : Navigator.pushNamed(context, AppRoutes.donationformScreen);
      },
      child: Container(
        width: 100,
        height: 30,
        decoration: ShapeDecoration(
          color: Color(0xFF6E9DBE),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
        ),
        child: Center(
          child: Text(
            button,
            style: TextStyle(
              color: Color(0xFFFDECEC),
              fontSize: 14,
              fontFamily: 'Kalam',
              fontWeight: FontWeight.w700,
              height: 0.06,
            ),
          ),
        ),
      ),
    );
  }
}

class CardListWidget extends StatelessWidget {
  String? title;
  String? image;
  CardListWidget({Key? key, this.image, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 71,
          height: 62,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageConstant.dashimg3),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          width: 71,
          height: 45,
          decoration: BoxDecoration(color: Color(0xFF75B8CD)),
          child: Center(
            child: Text(
              title!,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Salsa',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CardItem {
  String? title;
  String? image;
  CardItem({this.image, this.title});
}
