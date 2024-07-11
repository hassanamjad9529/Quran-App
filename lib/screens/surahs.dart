import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // ignore_for_file: must_be_immutable

class Iphone1313ProSevenPage extends StatefulWidget {
  const Iphone1313ProSevenPage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1313ProSevenPageState createState() => Iphone1313ProSevenPageState();
}

class Iphone1313ProSevenPageState extends State<Iphone1313ProSevenPage>
    with AutomaticKeepAliveClientMixin<Iphone1313ProSevenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 0.35),
              colors: [Color(0XFFE9E5FF), Color(0XFFFFFFFF)],
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(26),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.5, 0),
                end: Alignment(0.5, 0.35),
                colors: [Color(0XFFE9E5FF), Color(0XFFFFFFFF)],
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [_buildMainList(context)],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMainList(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 24,
          );
        },
        itemCount: 8,
        itemBuilder: (context, index) {
          return MainlistItemWidget();
        },
      ),
    );
  }
}

// ignore: must_be_immutable
class MainlistItemWidget extends StatelessWidget {
  const MainlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(right: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 36,
                width: 38,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                        3,
                      ),
                      child: SizedBox(
                        height: 36,
                        width: double.maxFinite,
                        child: SvgPicture.asset(
                          "assets/images/img_star_1.svg",
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 14),
                        child: Text(
                          "1",
                          style: TextStyle(
                            color: Color(0XFF332885),
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Al-Fatihah",
                      style: TextStyle(
                        color: Color(0XFF332885),
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Makkah - Pembuka - 7 Ayat",
                      style: TextStyle(
                        color: Color(0X66000000),
                        fontSize: 8,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 8),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "الفاتحة",
                  style: TextStyle(
                    color: Color(0XFF332885),
                    fontSize: 24,
                    fontFamily: 'Adobe Arabic',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 6),
        SizedBox(
          width: double.maxFinite,
          child: Divider(
            height: 1,
            thickness: 1,
            color: Color(0X3F332885),
            indent: 2,
          ),
        )
      ],
    );
  }
}
