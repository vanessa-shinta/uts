import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_text_field.dart';
import '../../widgets/custom_icon_button.dart'; // ignore_for_file: must_be_immutable

class PhoneTwoPage extends StatelessWidget {
  PhoneTwoPage({Key? key}) : super(key: key);

  TextEditingController formvalueController = TextEditingController();
  TextEditingController departureController = TextEditingController();
  TextEditingController returnvalueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        resizeToAvoidBottomInset: false,
        body: Container(
          height: 784.v,
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 784.v,
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
                                  colors: [
                                    appTheme.blue40001,
                                    appTheme.indigo500
                                  ],
                                ),
                              ),
                            ),
                          ),
                          _buildPulau01one(context),
                          _buildFavorite(context),
                          _buildUpcomingflight(context)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgBackground,
                height: 844.v,
                width: 390.h,
                alignment: Alignment.center,
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPulau01one(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 310.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgPulau011310x390,
              height: 310.v,
              width: 390.h,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.fromLTRB(43.h, 55.v, 26.h, 207.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 41.v,
                      width: 109.h,
                      margin: EdgeInsets.only(top: 5.v),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: 109.h,
                              child: Text(
                                "Let’s book your \nflight",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .titleMediumOnPrimaryContainer,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgAirplaneOnprimarycontainer,
                            height: 9.v,
                            width: 19.h,
                            alignment: Alignment.bottomCenter,
                            margin: EdgeInsets.only(bottom: 6.v),
                          )
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse6,
                      height: 45.adaptSize,
                      width: 45.adaptSize,
                      radius: BorderRadius.circular(
                        22.h,
                      ),
                      margin: EdgeInsets.only(bottom: 2.v),
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
  Widget _buildFormvalue(BuildContext context) {
    return CustomFloatingTextField(
      controller: formvalueController,
      labelText: "Form",
      labelStyle: CustomTextStyles.titleSmall14,
      hintText: "Form",
    );
  }

  /// Section Widget
  Widget _buildDeparture(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 13.h),
        child: CustomFloatingTextField(
          controller: departureController,
          labelText: "Daparture",
          labelStyle: theme.textTheme.labelLarge!,
          hintText: "Daparture",
          borderDecoration: FloatingTextFormFieldStyleHelper
              .gradientIndigoAToOnPrimaryContainer,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildReturnvalue(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 13.h),
        child: CustomFloatingTextField(
          controller: returnvalueController,
          labelText: "Return",
          labelStyle: theme.textTheme.labelLarge!,
          hintText: "Return",
          textInputAction: TextInputAction.done,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearch(BuildContext context) {
    return CustomElevatedButton(
      text: "Search",
      buttonStyle: CustomButtonStyles.outlinePrimaryTL10,
      onPressed: () {
        Navigator.pushNamed(context, AppRoutes.phoneThreeScreen);
      },
    );
  }

  /// Section Widget
  Widget _buildFavorite(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(
          left: 26.h,
          top: 121.v,
          right: 26.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 29.v,
        ),
        decoration: AppDecoration.outlinePrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 7.v),
            SizedBox(
              height: 128.v,
              width: 298.h,
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildFormvalue(context),
                        SizedBox(height: 22.v),
                        Container(
                          width: 298.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.h,
                            vertical: 8.v,
                          ),
                          decoration:
                              AppDecoration.gradientIndigoToBlue.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "To",
                                style: CustomTextStyles
                                    .bodySmallOnPrimaryContainer,
                              ),
                              SizedBox(height: 7.v),
                              Text(
                                "Bandung",
                                style: CustomTextStyles.titleSmall14,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 26.h),
                    child: CustomIconButton(
                      height: 47.adaptSize,
                      width: 47.adaptSize,
                      padding: EdgeInsets.all(12.h),
                      decoration:
                          IconButtonStyleHelper.fillOnPrimaryContainerTL23,
                      alignment: Alignment.centerRight,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFavorite,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 33.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_buildDeparture(context), _buildReturnvalue(context)],
            ),
            SizedBox(height: 61.v),
            _buildSearch(context)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUpcomingflight(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Upcoming Flight",
                  style: CustomTextStyles.titleMediumOnPrimary,
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 2.v,
                    bottom: 4.v,
                  ),
                  child: Text(
                    "See all",
                    style: CustomTextStyles.bodySmallIndigo500,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVector1,
                  height: 9.v,
                  width: 5.h,
                  margin: EdgeInsets.only(
                    left: 3.h,
                    top: 3.v,
                    bottom: 6.v,
                  ),
                )
              ],
            ),
            SizedBox(height: 25.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 21.v,
              ),
              decoration: AppDecoration.outlinePrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 1.v),
                    padding: EdgeInsets.all(4.h),
                    decoration: AppDecoration.fillBlue60072.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgCalendar,
                          height: 13.v,
                          width: 12.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 6.h,
                            top: 2.v,
                          ),
                          child: Text(
                            "July 20, 2022",
                            style: CustomTextStyles.labelSmallOnPrimary,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 4.h,
                      vertical: 5.v,
                    ),
                    decoration: AppDecoration.fillBlue.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgClock,
                          height: 13.adaptSize,
                          width: 13.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                            "1h 30 min",
                            style: CustomTextStyles.labelSmallOnPrimary,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 9.h),
              decoration: AppDecoration.outlinePrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Divider(
                    color: appTheme.gray300,
                  ),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "08.30 am",
                          style: theme.textTheme.labelMedium,
                        ),
                        Text(
                          "10.00 am",
                          style: theme.textTheme.labelMedium,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 11.v,
                            bottom: 4.v,
                          ),
                          child: Text(
                            "YIA",
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        Spacer(
                          flex: 56,
                        ),
                        SizedBox(
                          height: 38.v,
                          width: 154.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  width: 154.h,
                                  child: Divider(),
                                ),
                              ),
                              CustomIconButton(
                                height: 38.adaptSize,
                                width: 38.adaptSize,
                                padding: EdgeInsets.all(11.h),
                                decoration:
                                    IconButtonStyleHelper.outlinePrimary,
                                alignment: Alignment.center,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgAirplaneIndigo500,
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(
                          flex: 43,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 11.v,
                            bottom: 4.v,
                          ),
                          child: Text(
                            "DPS",
                            style: theme.textTheme.titleMedium,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 11.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Palembang",
                          style: theme.textTheme.labelMedium,
                        ),
                        Text(
                          "Bandung",
                          style: theme.textTheme.labelMedium,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 11.v)
                ],
              ),
            ),
            SizedBox(height: 14.v),
            CustomIconButton(
              height: 42.adaptSize,
              width: 42.adaptSize,
              padding: EdgeInsets.all(11.h),
              decoration: IconButtonStyleHelper.outlineOrangeA,
              child: CustomImageView(
                imagePath: ImageConstant.imgUser,
              ),
            )
          ],
        ),
      ),
    );
  }
}
