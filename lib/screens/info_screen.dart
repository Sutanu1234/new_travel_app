import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:new_travel_app/style/app_style.dart';
import 'package:new_travel_app/style/size_config.dart';
//import 'lib/style/app_style.dart';
//import 'lib/style/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
            SizedBox(
            height: SizeConfig.blockSizeVertical! * 61,
            child: Stack(
              children: [
                FullScreenSlider(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)
                      ),
                      color: kLighterWhite,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 60,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(kBorderRadius),
                                border: Border.all(color: kWhite),
                              ),
                              padding: EdgeInsets.all(8),
                              child: SvgPicture.asset('assets/arrow_back_icon.svg'),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(kBorderRadius),
                                border: Border.all(color: kWhite),
                              ),
                              padding: EdgeInsets.all(8),
                              child: SvgPicture.asset('assets/bookmark_white_icon.svg'),
                            ),
                          ],
                        ),
                        SizedBox(height: 32),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(kBorderRadius),
                              border: Border.all(color: kWhite),
                            ),
                            padding: EdgeInsets.all(8),
                            child: Center(
                              child: Icon(Icons.share_outlined,
                              size: 32,
                              color: kWhite,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                child: Column(
                  children: [
                    Text("Unravel mysteries of the Maldives",
                    style: kPoppinsBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 8.5,
                    ),
                    ),
                    SizedBox(height: 16),

                    //my info section
                    Container(
                      height: 72,
                      width: MediaQuery.of(context).size.width * 1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: kLighterGrey,width: 2
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: kLightBlue,
                                  backgroundImage: NetworkImage('https://cdn.computerhoy.com/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2022/03/avatar-facebook-2632445.jpg?itok=humq0Qgg'),
                                ),
                                SizedBox(width: 16),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 11),
                                    Text('Sutanu Bera',
                                      style: kPoppinsMedium.copyWith(
                                        color: kGrey,
                                        fontSize: SizeConfig.blockSizeHorizontal! * 4,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.calendar_month_outlined, color: kLightBlue, size: 16,),
                                        SizedBox(width: 8),
                                        Text('may 28, 2023',
                                          style: kPoppinsMedium.copyWith(
                                            color: kLightGrey,
                                            fontSize: SizeConfig.blockSizeHorizontal! * 3,
                                          ),
                                        ),
                                      ],
                                    ),
                              ],
                            ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(height: 14),
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/eye_icon.svg'),
                                    SizedBox(width: 8),
                                    Text('4561',
                                      style: kPoppinsMedium.copyWith(
                                        color: kGrey,
                                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.share_outlined, size: 16,color: kLightGrey,),
                                    SizedBox(width: 8),
                                    Text('450',
                                      style: kPoppinsMedium.copyWith(
                                        color: kGrey,
                                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 16),
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially.\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose",
                style: kPoppinsRegular.copyWith(
                  color: kGrey,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                ),
              ),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<String> imageList = [
  'https://images.unsplash.com/photo-1573843981267-be1999ff37cd?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1514282401047-d79a71a590e8?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1586861635167-e5223aadc9fe?q=80&w=1888&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
];

class FullScreenSlider extends StatefulWidget {
  const FullScreenSlider({super.key});

  @override
  State<FullScreenSlider> createState() => _FullScreenSliderState();
}

class _FullScreenSliderState extends State<FullScreenSlider> {
  int _current = 1;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            height: SizeConfig.blockSizeVertical! * 60,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            onPageChanged: (index, reason){
              setState(() {
                _current = index;
              });
            },
            initialPage: _current,
          ),
          items: imageList.map((item) => Center(
            child: Image.network(item,
              fit: BoxFit.cover,
              height: SizeConfig.blockSizeVertical! * 60,
              width: double.infinity,
            ),
          ),).toList(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 52),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              imageList.asMap().entries.map(
                    (entry) => GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: SvgPicture.asset(_current == entry.key ?
                    'assets/carousel_indicator_enabled.svg' :
                    'assets/carousel_indicator_disabled.svg',
                    ),
                  ),
                ),)
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
