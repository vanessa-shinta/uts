import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';

class PhoneOneScreen extends StatelessWidget {
  const PhoneOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 487.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPngtreeCreative,
                        height: 487.v,
                        width: 390.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: 59.v),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                height: 12.adaptSize,
                                width: 12.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 16.v,
                                  bottom: 18.v,
                                ),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimary,
                                  borderRadius: BorderRadius.circular(
                                    6.h,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 27.h),
                                padding: EdgeInsets.all(16.h),
                                decoration:
                                    AppDecoration.outlineIndigo.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder23,
                                ),
                                child: Container(
                                  height: 12.adaptSize,
                                  width: 12.adaptSize,
                                  decoration: BoxDecoration(
                                    color: appTheme.indigo500,
                                    borderRadius: BorderRadius.circular(
                                      6.h,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: appTheme.indigo500,
                                        spreadRadius: 2.h,
                                        blurRadius: 2.h,
                                        offset: Offset(
                                          0,
                                          0,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 12.adaptSize,
                                width: 12.adaptSize,
                                margin: EdgeInsets.only(
                                  left: 26.h,
                                  top: 16.v,
                                  bottom: 18.v,
                                ),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimary,
                                  borderRadius: BorderRadius.circular(
                                    6.h,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 15.h,
                    bottom: 5.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildFlightDetails(context),
                      SizedBox(height: 54.v),
                      Text(
                        "Find your flight",
                        style: theme.textTheme.titleLarge,
                      ),
                      SizedBox(height: 52.v),
                      Container(
                        width: 278.h,
                        margin: EdgeInsets.only(
                          left: 54.h,
                          right: 42.h,
                        ),
                        child: Text(
                          "Now no need to worry if you want to go anywere, find\r\nlots of flight ticket to various destinations you woat in\r\njust an app!",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      SizedBox(height: 36.v),
                      CustomElevatedButton(
                        width: 208.h,
                        text: "Get Started",
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.phoneTwoContainerScreen);
                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFlightDetails(BuildContext context) {
    return SizedBox(
      height: 403.v,
      width: 375.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle1,
            height: 403.v,
            width: 261.h,
            radius: BorderRadius.circular(
              115.h,
            ),
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPesawat1,
            height: 154.v,
            width: 375.h,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 99.v),
          )
        ],
      ),
    );
  }
}
