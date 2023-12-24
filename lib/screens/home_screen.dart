import 'package:flutter/material.dart';
import '../style/app_style.dart';
import '../style/size_config.dart';
//import 'style/app_style.dart';
//import 'style/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);

    return GestureDetector(
      onTap: (){
        FocusScopeNode currentFocus = FocusScope.of(context);

        if(!currentFocus.hasPrimaryFocus){
          currentFocus.unfocus();
        }
      },
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 28, vertical: 32),
          children: [
            // heading name & profile picture section
            Row(
              children: [
                Container(
                  height: 51,
                  width: 51,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: kLightBlue,
                    image: DecorationImage(
                      image: NetworkImage('https://marketplace.canva.com/EAFe2X15otQ/1/0/1600w/canva-red-black-illustrative-man-3d-avatar-4oF1bAeGYrg.jpg'),
                    ),
                  ),
                ),
                SizedBox(width: 18),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sutanu Bera',
                      style: kPoppinsBold.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                    ),
                    Text('Traveller & Nature Lover',
                      style: kPoppinsRegular.copyWith(
                        color: Colors.grey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            //search bar section
            SizedBox(height: 32),
            Container(
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
                color: kWhite,
                boxShadow: [
                  BoxShadow(
                    color: kDarkBlue.withOpacity(0.09),
                    offset: Offset(2.0, 2.0),
                    blurRadius: 20.0,
                    spreadRadius: 0.0,
                  ),
                ],
              ),
              //text file search here
              child: Row(
                children: [
                  Expanded(child: TextField(
                    style: kPoppinsRegular.copyWith(
                      color: kDarkBlue,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 12),
                      hintText: 'search here ...',
                      border: kBorder,
                      errorBorder: kBorder,
                      disabledBorder: kBorder,
                      focusedBorder: kBorder,
                      focusedErrorBorder: kBorder,
                      hintStyle: kPoppinsRegular.copyWith(
                        color: kLightGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                    ),
                  ),),
                  //search icon
                  Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                      color: kBlue,
                      borderRadius: BorderRadius.circular(kBorderRadius),
                    ),
                    child: IconButton(
                      onPressed: (){},
                      icon: SvgPicture.asset('assets/search_icon.svg'),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 32),

            // tags text
            SizedBox(
              height: 14,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder:
                    (context, index){
                  return Padding(
                    padding: const EdgeInsets.only(right: 32),
                    child: Text("#travel",
                      style: kPoppinsMedium.copyWith(
                        color: kGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                    ),
                  );
                },
              ),
            ),

            //image container
            SizedBox(height: 32),

            //middle image section
            SizedBox(
              height: 306,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index){
                  return Center(
                    child: Container(
                      padding: EdgeInsets.all(12),
                      margin: EdgeInsets.only(right: 20),
                      height: 300,
                      width: 256,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kBorderRadius),
                        color: kWhite,
                        boxShadow: [
                          BoxShadow(
                            color: kDarkBlue.withOpacity(0.05),
                            offset: Offset(0.0, 2.0),
                            blurRadius: 4.0,
                            spreadRadius: 0.0,
                          ),
                        ],
                      ),
                      // main image
                      child: Column(
                        children: [
                          Container(
                            height: 164,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: NetworkImage('https://rukminim2.flixcart.com/image/850/1000/poster/z/k/y/large-psu160002228-beautiful-sea-beach-original-imaek7r5nwkyuzaa.jpeg?q=20'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 14),

                          Flexible(child: Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting.',
                            style: kPoppinsBold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          ),
                          SizedBox(height: 16),
                          //avater
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundColor: kLightBlue,
                                    backgroundImage: NetworkImage('https://cdn.computerhoy.com/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2022/03/avatar-facebook-2632445.jpg?itok=humq0Qgg'),
                                  ),
                                  SizedBox(width: 12),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Sutanu Bera',
                                        style: kPoppinsSemibold.copyWith(
                                          fontSize: SizeConfig.blockSizeHorizontal! * 3.2,
                                        ),
                                      ),
                                      Text('Sep 9, 2020',
                                        style: kPoppinsMedium.copyWith(
                                          color: Colors.grey,
                                          fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                                        ),
                                      ),
                                    ],),
                                ],
                              ),
                              // share botton
                              Container(
                                height: 38,
                                width: 38,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(kBorderRadius),
                                  color: kLightWhite,
                                ),
                                child: Center(child: SvgPicture.asset('assets/share_icon.svg')),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 32),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Short For You",
                  style: kPoppinsBold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 4.5,
                  ),
                ),
                Text("see all",
                  style: kPoppinsMedium.copyWith(
                    color: kBlue,
                    fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                  ),
                ),
              ],
            ),

            SizedBox(height: 18),


            // short section
            SizedBox(
              height: 96,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder:
                    (context, index){
                  return Center(
                    child: Container(
                      margin: EdgeInsets.only(right: 16),
                      height: 86,
                      width: 200,
                      decoration: BoxDecoration(
                        color: kWhite,
                        borderRadius: BorderRadius.circular(kBorderRadius),
                        boxShadow: [
                          BoxShadow(
                            color: kDarkBlue.withOpacity(0.05),
                            offset: Offset(0.0, 2.0),
                            blurRadius: 4.0,
                            spreadRadius: 0.0,
                          ),
                        ],
                      ),
                      // image portion
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Container(
                              height: 72,
                              width: 72,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(kBorderRadius),
                                image: DecorationImage(
                                  image: NetworkImage('https://images.all-free-download.com/images/graphiclarge/sea_scene_picture_elegant_peaceful_6931140.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Center(
                                child: SvgPicture.asset('assets/play_icon.svg'),
                              ),
                            ),

                            SizedBox(width: 12),

                            // text file
                            Flexible(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Top Sea Beach List in 2022',
                                    style: kPoppinsBold.copyWith(
                                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset('assets/eye_icon.svg'),
                                      SizedBox(width: 8),
                                      Text('40,896',
                                        style: kPoppinsMedium.copyWith(
                                          color: kGrey,
                                          fontSize: SizeConfig.blockSizeHorizontal! * 3,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
