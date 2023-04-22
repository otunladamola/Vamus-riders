import 'package:get/get.dart';
import 'package:vamuz_riders/ui/common/forgot_password/email_validation.dart';
import 'package:vamuz_riders/ui/common/forgot_password/new_password.dart';
import 'package:vamuz_riders/ui/common/forgot_password/otp_validation.dart';
import 'package:vamuz_riders/ui/common/sign_in.dart';
import 'package:vamuz_riders/ui/fleet_owner/authentication/otp_page.dart';
import 'package:vamuz_riders/ui/splash_screen.dart';

import '../constant/route_constant.dart';

// ignore: avoid_classes_with_only_static_members
class AppPages {
  static const INITIAL = RouteConstant.ROOT;

  static final routes = [
    GetPage(
      name: RouteConstant.ROOT,
      page: () => const SplashScreen(),
      children: [
        GetPage(
            name: RouteConstant.ROOT,
            page: () => const SplashScreen(),
            transition: Transition.circularReveal),
        GetPage(
          name: RouteConstant.LOGIN,
          page: () {
            final isRider = Get.arguments['isRider'];
            return SignIn(isRider: isRider);
          },
          transition: Transition.rightToLeft,
        ),
        GetPage(
            name: RouteConstant.EMAIL_VALIDATION,
            page: () => const EmailValidation(),
            transition: Transition.rightToLeft),
        //     GetPage(
        //         name: RouteConstant.VERIFY_EMAIL,
        //         page: () => const EmailVerification(),
        //         transition: Transition.rightToLeft),
        GetPage(
            name: RouteConstant.OTP_VALIDATION,
            page: () => const OtpValidation(),
            transition: Transition.rightToLeft),
        GetPage(
            name: RouteConstant.OTP_PAGE,
            page: () => const OtpPage(),
            transition: Transition.rightToLeft),
        GetPage(
            name: RouteConstant.NEW_PASSWORD,
            page: () => const NewPassword(),
            transition: Transition.rightToLeft),
        //     GetPage(
        //         name: RouteConstant.BUYER_SIGN_UP,
        //         page: () => const BuyerSignUp(),
        //         transition: Transition.rightToLeft),
        //     GetPage(
        //         name: RouteConstant.SELLER_SIGN_UP,
        //         page: () => const SellerSignUp(),
        //         transition: Transition.rightToLeft),
        //     GetPage(
        //         name: RouteConstant.ONBOARDING,
        //         page: () => const Onboarding(),
        //         transition: Transition.circularReveal),
        //     GetPage(
        //         name: RouteConstant.SELLER_OPTIONS,
        //         page: () => const SellerHomeOptions(),
        //         transition: Transition.rightToLeft),
        //     GetPage(
        //       name: RouteConstant.BUYER_OPTIONS,
        //       page: () => const BuyerHomeOptions(),
        //       transition: Transition.rightToLeft,
        //     ),
        //     GetPage(
        //       name: RouteConstant.DELIVERY_SCREEN,
        //       page: () => const DeliveryScreen(),
        //       transition: Transition.rightToLeft,
        //     ),
        //     GetPage(
        //       name: RouteConstant.PICK_CATEGORY,
        //       page: () => const PickACategory(),
        //       transition: Transition.rightToLeft,
        //     ),
        //     GetPage(
        //       name: RouteConstant.MARKETPLACE,
        //       page: () => const MarketPlace(),
        //       transition: Transition.rightToLeft,
        //     ),
        //     GetPage(
        //       name: RouteConstant.STORE,
        //       page: () => const Store(),
        //       transition: Transition.rightToLeft,
        //     ),
        //     GetPage(
        //       name: RouteConstant.ADD_PRODUCT,
        //       page: () => const AddProduct(),
        //       transition: Transition.rightToLeft,
        //     ),
        //     GetPage(
        //       name: RouteConstant.PRODUCT_DETAILS,
        //       page: () {
        //         final product = Get.arguments['product'];
        //         return SellerProductDetails(product: product);
        //       },
        //       transition: Transition.rightToLeft,
        //     ),
        //     GetPage(
        //       name: RouteConstant.MESSAGE,
        //       page: () => const MessageScreen(),
        //       transition: Transition.rightToLeft,
        //     ),
        //     GetPage(
        //       name: RouteConstant.SALES_ANALYTICS,
        //       page: () => const SalesAnalytics(),
        //       transition: Transition.rightToLeft,
        //     ),
        //     GetPage(
        //       name: RouteConstant.UPDATE_ACCOUNT_INFO,
        //       page: () => const UpdateAccountInfo(),
        //       transition: Transition.rightToLeft,
        //     ),
        //     GetPage(
        //       name: RouteConstant.PASSWORD_SECURITY,
        //       page: () => const PasswordSecurity(),
        //       transition: Transition.rightToLeft,
        //     ),
        //     GetPage(
        //       name: RouteConstant.MANAGE_ORDER,
        //       page: () => const ManageOrder(),
        //       transition: Transition.rightToLeft,
        //     ),
        //     GetPage(
        //       name: RouteConstant.ORDER_DETAILS,
        //       page: () => const OrderDetails(),
        //       transition: Transition.rightToLeft,
        //     ),
        //     GetPage(
        //       name: RouteConstant.FAQ,
        //       page: () => const FAQ(),
        //       transition: Transition.rightToLeft,
        //     ),
        //     GetPage(
        //       name: RouteConstant.CONTACT_US,
        //       page: () => const ContactUs(),
        //       transition: Transition.rightToLeft,
        //     ),
        //     GetPage(
        //       name: RouteConstant.ABOUT_US,
        //       page: () => const AboutUs(),
        //       transition: Transition.rightToLeft,
        //     ),
        //     GetPage(
        //       name: RouteConstant.NOTIFICATIONS,
        //       page: () => const Notifications(),
        //       transition: Transition.rightToLeft,
        //     ),
        //     GetPage(
        //       name: RouteConstant.DELIVERY_SUMMARY,
        //       page: () => const DeliverySummary(),
        //       transition: Transition.rightToLeft,
        //     ),
        //     GetPage(
        //       name: RouteConstant.FILTER_DETAILS,
        //       page: () => const FilterDetails(),
        //       transition: Transition.rightToLeft,
        //     ),
        //     GetPage(
        //       name: RouteConstant.ADD_PAYMENT,
        //       page: () => const AddPayment(),
        //       transition: Transition.rightToLeft,
        //     ),
      ],
    ),
  ];
}
