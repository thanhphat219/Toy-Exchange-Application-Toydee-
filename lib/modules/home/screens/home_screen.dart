import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toy_exchange_application_toydee/core/routing/navigation_service.dart';
import 'package:toy_exchange_application_toydee/core/routing/route_paths.dart';
import 'package:toy_exchange_application_toydee/core/widgets/custom_icon_button.dart';
import 'package:toy_exchange_application_toydee/core/widgets/custom_text_form_field.dart';
import 'package:toy_exchange_application_toydee/core/widgets/custom_text_outline_button.dart';
import 'package:toy_exchange_application_toydee/modules/authentication/viewmodels/tesst.dart';

import '../../../core/styles/resources.dart';
import '../../../core/styles/styles.dart';
import '../../../core/styles/text.dart';
import '../../../core/widgets/custom_text_elevated_button.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     List color = [S.colors.accent_8, S.colors.accent_4, S.colors.accent_5];
//     List text = [
//       "Donate unused toys or help with  funds for worthy causes",
//       "Exchange toy with other users easily and quickly",
//       "Social and special events in support of uor partners",
//     ];
//     List image = [
//       R.images.homeSwiper_1,
//       R.images.homeSwiper_2,
//       R.images.homeSwiper_3,
//     ];
//     TabController tabController = TabController(length: 2, vsync: this);
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: S.colors.background_1,
//         body: SingleChildScrollView(
//           child: Padding(
//             padding:
//                 EdgeInsets.symmetric(horizontal: S.dimens.defaultPadding_16),
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: S.dimens.defaultPadding_8,
//                 ),
//                 Center(
//                   child: SizedBox(
//                     height: 40,
//                     width: 160,
//                     child: Image.asset(
//                       R.images.logoText,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: S.dimens.defaultPadding_16,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     CustomTextFormField(
//                       hintText: "Search",
//                       obscureText: true,
//                       controller: Tesst.e,
//                       width: ScreenUtil().setWidth(320),
//                     ),
//                     CustomIconButton(
//                       width: ScreenUtil().setWidth(50),
//                       text: R.images.fbLogin,
//                       onPressed: () {},
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: S.dimens.defaultPadding_16,
//                 ),
//                 SizedBox(
//                   height: 200.h,
//                   width: double.infinity,
//                   child: Swiper(
//                     itemBuilder: (BuildContext context, int index) {
//                       return Padding(
//                         padding: EdgeInsets.symmetric(
//                             horizontal: S.dimens.defaultPadding_4),
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: color[index],
//                             borderRadius: BorderRadius.all(
//                               Radius.circular(S.dimens.defaultBorderRadius),
//                             ),
//                           ),
//                           child: Padding(
//                             padding: EdgeInsets.all(S.dimens.defaultPadding_16),
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Expanded(
//                                   flex: 3,
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       Text(
//                                         text[index],
//                                         style: S.textStyles.h4,
//                                       ),
//                                       InkWell(
//                                         onTap: () {},
//                                         child: Text(
//                                           "Learn more",
//                                           style: S.textStyles.h4Underline,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width: S.dimens.defaultPadding_16,
//                                 ),
//                                 Expanded(
//                                     flex: 2,
//                                     child: Center(
//                                         child: Image.asset(image[index]))),
//                               ],
//                             ),
//                           ),
//                         ),
//                       );
//                     },
//                     itemCount: 3,
//                   ),
//                 ),
//                 Container(
//                   child: TabBar(
//                     tabs: [
//                       Tab(text: "Lastes"),
//                       Tab(text: "Lastes"),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   child: TabBarView(children: [
//                     Text("Hi"),
//                     Text("There"),
//                   ]),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    List color = [S.colors.accent_8, S.colors.accent_4, S.colors.accent_5];
    List text = [
      "Donate unused toys or help with  funds for worthy causes",
      "Exchange toy with other users easily and quickly",
      "Social and special events in support of uor partners",
    ];
    List image = [
      R.images.homeSwiper_1,
      R.images.homeSwiper_2,
      R.images.homeSwiper_3,
    ];
    TabController tabController = TabController(length: 2, vsync: this);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: S.colors.background_2,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: S.colors.background_1,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(S.dimens.defaultPadding_24),
                      bottomRight: Radius.circular(S.dimens.defaultPadding_24),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: S.dimens.defaultPadding_16),
                    child: Column(
                      children: [
                        SizedBox(
                          height: S.dimens.defaultPadding_8,
                        ),
                        Center(
                          child: SizedBox(
                            height: 40,
                            width: 160,
                            child: Image.asset(
                              R.images.logoText,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: S.dimens.defaultPadding_16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomTextFormField(
                              hintText: "Search",
                              obscureText: true,
                              controller: Tesst.e,
                              width: ScreenUtil().setWidth(320),
                            ),
                            CustomIconButton(
                              width: ScreenUtil().setWidth(50),
                              text: FontAwesomeIcons.filter,
                              backgroundColor: S.colors.accent_5,
                              onPressed: () {
                                NavigationService.push(
                                    isNamed: true, page: RoutePaths.homefilter);
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: S.dimens.defaultPadding_16,
                        ),
                        SizedBox(
                          height: 400.h,
                          width: double.infinity,
                          child: Swiper(
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: S.dimens.defaultPadding_4),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: color[index],
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          S.dimens.defaultBorderRadius),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(
                                        S.dimens.defaultPadding_24),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 3,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                width: 140,
                                                child: Text(
                                                  text[index],
                                                  style: S.textStyles.h4,
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: Text(
                                                  "Learn more",
                                                  style: S.textStyles
                                                      .titleLightUnderline,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: S.dimens.defaultPadding_16,
                                        ),
                                        Expanded(
                                            flex: 2,
                                            child: Center(
                                                child:
                                                    Image.asset(image[index]))),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            itemCount: 3,
                          ),
                        ),
                        SizedBox(
                          height: S.dimens.defaultPadding_16,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TabBar(
                            controller: tabController,
                            indicator: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: S.colors.accent_1,
                                  width: 3.0,
                                ),
                              ),
                            ),
                            indicatorSize: TabBarIndicatorSize.label,
                            labelColor: S.colors.accent_1,
                            unselectedLabelColor: S.colors.primary,
                            tabs: [
                              Tab(
                                child: Text(
                                  "Latest",
                                  style: S.textStyles.h4,
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Swap",
                                  style: S.textStyles.h4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: S.dimens.defaultPadding_16),
                  width: double.infinity,
                  height: 300.h,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      Column(
                        children: [
                          // Text(T.homeSeeAll),
                          // GridView.builder(
                          //   gridDelegate:
                          //       const SliverGridDelegateWithFixedCrossAxisCount(
                          //     crossAxisCount: 2,
                          //     childAspectRatio: 0.75,
                          //     mainAxisSpacing: 8.0,
                          //     crossAxisSpacing: 8.0,
                          //   ),
                          //   itemBuilder: (context, index) => GestureDetector(
                          //     child: Container(
                          //       padding: EdgeInsets.symmetric(
                          //           horizontal: S.dimens.defaultBorderRadius),
                          //       decoration: BoxDecoration(
                          //         color: Color(0xFFF7F7F7),
                          //         borderRadius: BorderRadius.all(
                          //           Radius.circular(
                          //               S.dimens.defaultBorderRadius),
                          //         ),
                          //       ),
                          //       child: Column(
                          //         children: [],
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                      Card(
                        color: S.colors.background_1,
                        child: SizedBox(height: 50),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
