import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';

class PhoneThreeScreen extends StatelessWidget {
  const PhoneThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        body: SizedBox(
          height: 755.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 295.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(1, 0),
                      end: Alignment(0, 1),
                      colors: [appTheme.blue40001, appTheme.indigo500],
                    ),
                  ),
                ),
              ),
              _buildPulauOneStack(context),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 26.h,
                    right: 26.h,
                    bottom: 5.v,
                  ),
                  decoration: AppDecoration.outlinePrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 33.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 26.h,
                          right: 18.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse6,
                              height: 45.adaptSize,
                              width: 45.adaptSize,
                              radius: BorderRadius.circular(
                                22.h,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 9.h,
                                top: 4.v,
                                bottom: 2.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Andre Sushino",
                                    style:
                                        CustomTextStyles.titleMediumOnPrimary,
                                  ),
                                  SizedBox(height: 6.v),
                                  Text(
                                    "Passanger",
                                    style: theme.textTheme.labelMedium,
                                  )
                                ],
                              ),
                            ),
                            Spacer(),
                            CustomImageView(
                              imagePath: ImageConstant.imgPngwing1,
                              height: 28.v,
                              width: 50.h,
                              margin: EdgeInsets.only(
                                top: 7.v,
                                bottom: 10.v,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 26.v),
                      Divider(
                        color: theme.colorScheme.onPrimary,
                      ),
                      SizedBox(height: 17.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 2.v),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "YIA",
                                    style: theme.textTheme.titleMedium,
                                  ),
                                  SizedBox(height: 6.v),
                                  Text(
                                    "Palembang",
                                    style: theme.textTheme.labelMedium,
                                  )
                                ],
                              ),
                            ),
                            Spacer(
                              flex: 44,
                            ),
                            SizedBox(
                              height: 45.v,
                              width: 123.h,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                      width: 123.h,
                                      child: Divider(),
                                    ),
                                  ),
                                  CustomIconButton(
                                    height: 45.adaptSize,
                                    width: 45.adaptSize,
                                    padding: EdgeInsets.all(15.h),
                                    decoration:
                                        IconButtonStyleHelper.fillIndigo,
                                    alignment: Alignment.center,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgAirplane,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Spacer(
                              flex: 56,
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 3.v),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "DPS",
                                    style: theme.textTheme.titleMedium,
                                  ),
                                  SizedBox(height: 6.v),
                                  Text(
                                    "Bandung",
                                    style: theme.textTheme.labelMedium,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 42.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 45.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: _buildClockOneColumn(
                                context,
                                clockImage: ImageConstant.imgCalendar,
                                time: "Date",
                                time1: "July 20, 2022",
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 26.h),
                                child: _buildClockOneColumn(
                                  context,
                                  clockImage: ImageConstant.imgClock,
                                  time: "Time",
                                  time1: "08.30 - 10.00 am",
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 26.v),
                      Divider(
                        color: theme.colorScheme.secondaryContainer,
                      ),
                      SizedBox(height: 27.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 33.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 2.v),
                              child: Column(
                                children: [
                                  Text(
                                    "Gate ",
                                    style: theme.textTheme.labelSmall,
                                  ),
                                  SizedBox(height: 4.v),
                                  Text(
                                    "B2",
                                    style:
                                        CustomTextStyles.labelMediumOnPrimary,
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 2.v),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Seet",
                                    style: theme.textTheme.labelSmall,
                                  ),
                                  SizedBox(height: 4.v),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "12 B",
                                      style:
                                          CustomTextStyles.labelMediumOnPrimary,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  "Flight no",
                                  style: theme.textTheme.labelSmall,
                                ),
                                SizedBox(height: 5.v),
                                Text(
                                  "RD45",
                                  style: CustomTextStyles.labelMediumOnPrimary,
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
                              child: Column(
                                children: [
                                  Text(
                                    "Class",
                                    style: theme.textTheme.labelSmall,
                                  ),
                                  SizedBox(height: 4.v),
                                  Text(
                                    "Economy",
                                    style:
                                        CustomTextStyles.labelMediumOnPrimary,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 38.v),
                      _buildBoardingPassStack(context)
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 11.adaptSize,
                  width: 11.adaptSize,
                  margin: EdgeInsets.only(
                    top: 270.v,
                    right: 21.h,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.blue600,
                    borderRadius: BorderRadius.circular(
                      5.h,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 11.adaptSize,
                  width: 11.adaptSize,
                  margin: EdgeInsets.only(
                    right: 21.h,
                    bottom: 263.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.gray100,
                    borderRadius: BorderRadius.circular(
                      5.h,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 11.adaptSize,
                  width: 11.adaptSize,
                  margin: EdgeInsets.only(
                    left: 20.h,
                    top: 270.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.indigo50001,
                    borderRadius: BorderRadius.circular(
                      5.h,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: 11.adaptSize,
                  width: 11.adaptSize,
                  margin: EdgeInsets.only(
                    left: 20.h,
                    bottom: 263.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.gray100,
                    borderRadius: BorderRadius.circular(
                      5.h,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildDownloadTicketButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildPulauOneStack(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 317.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgPulau011,
              height: 317.v,
              width: 390.h,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 136.h,
                  top: 67.v,
                  right: 136.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomIconButton(
                      height: 45.adaptSize,
                      width: 45.adaptSize,
                      padding: EdgeInsets.all(8.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgClose,
                      ),
                    ),
                    SizedBox(height: 19.v),
                    Text(
                      "Boarding Pass",
                      style: CustomTextStyles.titleMediumOnPrimaryContainer_1,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBoardingPassStack(BuildContext context) {
    return SizedBox(
      height: 123.v,
      width: 338.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 29.v),
              child: Text(
                "Boarding Pass",
                style: CustomTextStyles.labelMediumPrimary,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 76.h,
                vertical: 27.v,
              ),
              decoration:
                  AppDecoration.gradientBlueGrayToOnPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 19.v),
                  BarcodeWidget(
                    data: '1234567890',
                    barcode: Barcode.code39(),
                    drawText: false,
                    height: 50.v,
                    width: 184.h,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDownloadTicketButton(BuildContext context) {
    return CustomElevatedButton(
      width: 264.h,
      text: "Download ticket",
      margin: EdgeInsets.only(
        left: 63.h,
        right: 63.h,
        bottom: 45.v,
      ),
    );
  }

  /// Common widget
  Widget _buildClockOneColumn(
    BuildContext context, {
    required String clockImage,
    required String time,
    required String time1,
  }) {
    return Container(
      padding: EdgeInsets.fromLTRB(10.h, 8.v, 10.h, 9.v),
      decoration: AppDecoration.gradientIndigoToBlueGray,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 17.adaptSize,
            width: 17.adaptSize,
            padding: EdgeInsets.all(4.h),
            decoration: AppDecoration.fillBlue.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: clockImage,
              height: 9.adaptSize,
              width: 9.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 10.v),
          Text(
            time,
            style: theme.textTheme.labelSmall!.copyWith(
              color: appTheme.gray500,
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            time1,
            style: CustomTextStyles.labelSmallOnPrimary.copyWith(
              color: theme.colorScheme.onPrimary,
            ),
          ),
          SizedBox(height: 3.v)
        ],
      ),
    );
  }
}
