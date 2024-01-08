import 'package:flutter/material.dart';
import 'dart:io';

class CalculateFontSizeClass {
  double calculateFontSize(BuildContext context, double scaleFactor) {
    double adjustedFontSize = 10.0;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Orientation orientation = MediaQuery.of(context).orientation;
    // debugPrint(
    //     'in calculateFontSize: orientation = $orientation\nheight = $height\nwidth = $width');

    if (Platform.isIOS) {
      // iPhones: 320 w x 568 h
      // iPhone SE 1st gen
      // iPhone 5C
      // iPhone 5S
      // iPhone 5
      double iPhone320x568portrait = 10.0;
      double iPhone320x568landscape = 12.0;
      if ((orientation == Orientation.portrait) && (width == 320 && height == 568)) {
        adjustedFontSize = iPhone320x568portrait * scaleFactor;
        // debugPrint('in iPhones: 320 w x 568 height: $height\nwidth: $width');
        return adjustedFontSize;
      } else if (orientation == Orientation.landscape && (width == 568 && height == 320)) {
        adjustedFontSize = iPhone320x568landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPhones: 375 w x 667 h
      // iPhone SE 3rd gen
      // iPhone SE 2nd gen
      // iPhone 8
      // iPhone 7
      // iPhone 6s
      // iPhone 6
      double iPhone375x667portrait = 10.0;
      double iPhone375x667landscape = 10.0;
      if ((orientation == Orientation.portrait) && (width == 375 && height == 667)) {
        adjustedFontSize = iPhone375x667portrait * scaleFactor;
        return adjustedFontSize;
      } else if (orientation == Orientation.landscape && (width == 667 && height == 375)) {
        adjustedFontSize = iPhone375x667landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPhones: 414 w x 736 h
      // iPhone 8 Plus
      // iPhone 7 Plus
      // iPhone 6s Plus
      // iPhone 6 Plus
      double iPhone414x736portrait = 10.0;
      double iPhone414x736landscape = 10.0;
      if ((orientation == Orientation.portrait) && (width == 414 && height == 736)) {
        adjustedFontSize = iPhone414x736portrait * scaleFactor;
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) && (width == 736 && height == 414)) {
        adjustedFontSize = iPhone414x736landscape * scaleFactor;
        return adjustedFontSize;
      }
      //  iPhones: 375 w x 812 h
      // iPhone 13 mini
      // iPhone 12 mini
      // iPhone 11 Pro
      // iPhone XS
      // iPhone X
      double iPhone375x812portrait = 9.5;
      double iPhone375x812landscape = 10.0;
      if ((orientation == Orientation.portrait) && (width == 375 && height == 812)) {
        adjustedFontSize = iPhone375x812portrait * scaleFactor;
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) && (width == 812 && height == 375)) {
        adjustedFontSize = iPhone375x812landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPhones: 390 w x 844 h
      // iPhone 14 - simulator
      // iPhone 13
      // iPhone 13 Pro
      // iPhone 12
      // iPhone 12 Pro
      double iPhone390x844portrait = 9.5;
      double iPhone390x844landscape = 10.0;
      if ((orientation == Orientation.portrait) && ((width == 390) && (height == 844))) {
        adjustedFontSize = iPhone390x844portrait * scaleFactor;
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 844) && (height == 390))) {
        adjustedFontSize = iPhone390x844landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPhones: 393 w x 852 h
      // iPhone 15 Pro - simulator
      // iPhone 15
      // iPhone 14 Pro
      double iPhone393x852portrait = 9.5;
      double iPhone393x852landscape = 10.0;
      if ((orientation == Orientation.portrait) && ((width == 393) && (height == 852))) {
        // debugPrint(
        //     'in else portrait: iPhones: 430 w x 932 h\nadjustedFontSize = $adjustedFontSize');
        adjustedFontSize = iPhone393x852portrait * scaleFactor;
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 852) && (height == 393))) {
        // debugPrint('in else landscape: iPhones: 852 w x 393 h');
        adjustedFontSize = iPhone393x852landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPhones: 414 w x 896 h
      // iPhone 11 Pro Max
      // iPhone 11
      // iPhone XR
      // iPhone XS Max
      double iPhone414x896portrait = 10.0;
      double iPhone414x896landscape = 10.0;
      if ((orientation == Orientation.portrait) && ((width == 414) && (height == 896))) {
        adjustedFontSize = iPhone414x896portrait * scaleFactor;
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 896) && (height == 414))) {
        adjustedFontSize = iPhone414x896landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPhones: 428 w x 926 h
      // iPhone 14 Plus
      // iPhone 13 Pro Max
      // iPhone 12 Pro Max
      double iPhone428x926portrait = 10.0;
      double iPhone428x926landscape = 11.5;
      if ((orientation == Orientation.portrait) && ((width == 428) && (height == 926))) {
        adjustedFontSize = iPhone428x926portrait * scaleFactor;
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 926) && (height == 428))) {
        adjustedFontSize = iPhone428x926landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPhones: 430 w x 932 h
      // iPhone 15 Pro Max
      // iPhone 15 Plus
      // iPhone 14 Pro Max
      double iPhone430x932portrait = 12.0;
      double iPhone430x932landscape = 11.5;
      if ((orientation == Orientation.portrait) && ((width == 430) && (height == 932))) {
        adjustedFontSize = iPhone430x932portrait * scaleFactor;
        // debugPrint('in iPhone430x932portrait adjustedFontSize =$adjustedFontSize');
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 932) && (height == 430))) {
        adjustedFontSize = iPhone430x932landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPads: 768 w x 1024  h
      // iPad Mini (5th gen)
      // iPad 6th gen
      // iPad 5th gen
      // iPad Pro (1st gen 9.7”)
      // iPad mini 4
      // iPad Air 2
      // iPad mini 3
      // iPad mini 2
      // iPad Air
      // iPad 4th gen
      // iPad mini
      // iPad 3rd gen
      // iPad 2
      // iPad 1st gen
      double iPad768x1024portrait = 14.0;
      double iPad768x1024landscape = 20.0;
      if ((orientation == Orientation.portrait) && ((width == 768) && (height == 1024))) {
        adjustedFontSize = iPad768x1024portrait * scaleFactor;
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1024) && (height == 768))) {
        adjustedFontSize = iPad768x1024landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPads: 810 w x 1080  h
      // iPad 9th gen
      // iPad 8th gen
      // iPad 7th gen
      double iPad810x1080portrait = 12.0;
      double iPad810x1080landscape = 16.0;
      if ((orientation == Orientation.portrait) && ((width == 810) && (height == 1080))) {
        adjustedFontSize = iPad810x1080portrait * scaleFactor;
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1080) && (height == 810))) {
        adjustedFontSize = iPad810x1080landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPads: 834 w x 1112  h
      // iPad Air (3rd gen)
      // iPad Pro (2nd gen 10.5")
      double iPad834x1112portrait = 14.0;
      double iPad834x1112landscape = 20.0;
      if ((orientation == Orientation.portrait) && ((width == 834) && (height == 1112))) {
        adjustedFontSize = iPad834x1112portrait * scaleFactor;
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1112) && (height == 834))) {
        adjustedFontSize = iPad834x1112landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPads: 744.0 w x 1113.0  h
      // iPad Mini (6th gen)
      double iPad744x1113portrait = 12.0;
      double iPad744x1113landscape = 16.0;
      if ((orientation == Orientation.portrait) && ((width == 744.0) && (height == 1133.0))) {
        adjustedFontSize = iPad744x1113portrait * scaleFactor;
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) &&
          ((width == 1133.0) && (height == 744.0))) {
        adjustedFontSize = iPad744x1113landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPads: 820 w x 1180  h
      // iPad 10th gen
      // iPad Air (5th gen)
      // iPad Air (4th gen)
      double iPad820x1180portrait = 14.0;
      double iPad820x1180landscape = 20.0;
      if ((orientation == Orientation.portrait) && ((width == 820) && (height == 1180))) {
        adjustedFontSize = iPad820x1180portrait * scaleFactor;
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1180) && (height == 820))) {
        adjustedFontSize = iPad820x1180landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPads: 834 w x 1194  h
      // iPad Pro (6th gen 11")
      // iPad Pro (5th gen 11")
      // iPad Pro (4th gen 11")
      // iPad Pro (3rd gen 11")
      double iPad834x1194portrait = 14.0;
      double iPad834x1194landscape = 20.0;
      if ((orientation == Orientation.portrait) && ((width == 834) && (height == 1194))) {
        adjustedFontSize = iPad834x1194portrait * scaleFactor;
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1194) && (height == 834))) {
        adjustedFontSize = iPad834x1194landscape * scaleFactor;
        return adjustedFontSize;
      }
      // iPads: 1024 w x 1366  h
      // iPad Pro (6th gen 12.9")
      // iPad Pro (5th gen 12.9")
      // iPad Pro (4th gen 12.9")
      // iPad Pro (3rd gen 12.9")
      // iPad Pro (2nd gen 12.9")
      //  iPad Pro (1st gen 12.9")
      double iPad1024x1366portrait = 14.0;
      double iPad1024x1366landscape = 20.0;
      if ((orientation == Orientation.portrait) && ((width == 1024) && (height == 1366))) {
        adjustedFontSize = iPad1024x1366portrait * scaleFactor;
        return adjustedFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1366) && (height == 1024))) {
        adjustedFontSize = iPad1024x1366landscape * scaleFactor;
        return adjustedFontSize;
      } else {
        // default font size
        return adjustedFontSize = 12.0;
      }
    }
    if (Platform.isAndroid) {
      // generic Android screen size: small less then 320px
      double androidGenericSmallPortrait = 10.0;
      double androidGenericSmallLandscape = 10.0;
      if ((orientation == Orientation.portrait) && (width < 320)) {
        adjustedFontSize = androidGenericSmallPortrait * scaleFactor;
        // debugPrint('in Android screen size: small less then 320px height: $height\nwidth: $width');
        return adjustedFontSize;
      } else if (orientation == Orientation.landscape && (height < 320)) {
        adjustedFontSize = androidGenericSmallLandscape * scaleFactor;
        return adjustedFontSize;
      }
      // generic Android screen size: medium width >= 320 && width <= 360
      double androidGenericMediumPortrait = 10.0;
      double androidGenericMediumLandscape = 10.0;
      if ((orientation == Orientation.portrait) && (width >= 320 && width <= 360)) {
        adjustedFontSize = androidGenericMediumPortrait * scaleFactor;
        // debugPrint(
        //     'in Android screen size: medium width >= 320 && width <= 360 height: $height\nwidth: $width');
        return adjustedFontSize;
      } else if (orientation == Orientation.landscape && (height >= 320 && height <= 360)) {
        adjustedFontSize = androidGenericMediumLandscape * scaleFactor;
        return adjustedFontSize;
      }
      // generic Android screen size: large width >= 360 && width <= 420
      double androidGenericLargePortrait = 10.0;
      double androidGenericLargeLandscape = 10.0;
      if ((orientation == Orientation.portrait) && (width >= 360 && width <= 420)) {
        adjustedFontSize = androidGenericLargePortrait * scaleFactor;
        // debugPrint(
        //     'in Android screen size: large width >= 360 && width <= 420 height: $height\nwidth: $width');
        return adjustedFontSize;
      } else if (orientation == Orientation.landscape && (height >= 360 && height <= 420)) {
        adjustedFontSize = androidGenericLargeLandscape * scaleFactor;
        return adjustedFontSize;
      }
      // generic Android screen size: tablet width >= 421
      double androidGenericTabletPortrait = 10.0;
      double androidGenericTableLandscape = 10.0;
      if ((orientation == Orientation.portrait) && (width >= 421)) {
        adjustedFontSize = androidGenericTabletPortrait * scaleFactor;
        // debugPrint('in Android screen size: tablet width >= 421 height: $height\nwidth: $width');
        return adjustedFontSize;
      } else if (orientation == Orientation.landscape && (height >= 421)) {
        adjustedFontSize = androidGenericTableLandscape * scaleFactor;
        return adjustedFontSize;
      }
      // 182 x 295 logical px
      // 480 x 800 dp
      // Samsung Galaxy S
      // Samsung Galaxy S Plus
      // Samsung Nexus S
      // Samsung Galaxy SII
      double android182x295portrait = 10.0;
      double android182x295landscape = 10.0;
      if ((orientation == Orientation.portrait) && (width >= 182 && height <= 295)) {
        adjustedFontSize = android182x295portrait * scaleFactor;
        // debugPrint('in Android 182 x 295 height: $height\nwidth: $width');
        return adjustedFontSize;
      } else if (orientation == Orientation.landscape && (width >= 295 && height <= 182)) {
        adjustedFontSize = android182x295landscape * scaleFactor;
        return adjustedFontSize;
      }
      // 182 x 315 logical px
      // 480 x 854 dp
      // Motorola Droid
      double android182x315portrait = 10.0;
      double android182x315landscape = 10.0;
      if ((orientation == Orientation.portrait) && (width >= 182 && height <= 315)) {
        adjustedFontSize = android182x315portrait * scaleFactor;
        // debugPrint('in Android 182 x 315 height: $height\nwidth: $width');
        return adjustedFontSize;
      } else if (orientation == Orientation.landscape && (width >= 315 && height <= 182)) {
        adjustedFontSize = android182x315landscape * scaleFactor;
        return adjustedFontSize;
      }
      // 205 x 354 logical px
      // 540 x 960 dp
      // Motorola Droid Razr
      // Motorola Droid Razr Maxx
      // Motorola Moto E
      double android205x354portrait = 10.0;
      double android205x354landscape = 10.0;
      if ((orientation == Orientation.portrait) && (width >= 205 && height <= 354)) {
        adjustedFontSize = android205x354portrait * scaleFactor;
        // debugPrint('in Android 205 x 354 height: $height\nwidth: $width');
        return adjustedFontSize;
      } else if (orientation == Orientation.landscape && (width >= 354 && height <= 205)) {
        adjustedFontSize = android205x354landscape * scaleFactor;
        return adjustedFontSize;
      }
      // 274 x 472 logical px
      // 720 x 1280 dp
      // LG Phoenix 2
      // Samsung Galaxy Nexus
      // Samsung Galaxy SIII
      // Motorola Moto G
      // Samsung A5
      // Samsung Z3
      // Sony Xperia M4
      // Samsung Galaxy Note II
      // Samsung Galaxy J7
      //
      // 292 x 472 logical px
      // 768 x 1280 dp
      // LG Nexus 4
      // LG Nexus 4 AR
      double android292x472portrait = 10.0;
      double android292x472landscape = 10.0;
      if ((orientation == Orientation.portrait) && (width >= 292 && height <= 472)) {
        adjustedFontSize = android292x472portrait * scaleFactor;
        // debugPrint('in Android 292 x 472 height: $height\nwidth: $width');
        return adjustedFontSize;
      } else if (orientation == Orientation.landscape && (width >= 472 && height <= 292)) {
        adjustedFontSize = android292x472landscape * scaleFactor;
        return adjustedFontSize;
      }

      // 304 x 472 logical px
      // 800 x 1280 dp
      // Samsung Galaxy Note
      double android304x472portrait = 10.0;
      double android304x472landscape = 10.0;
      if ((orientation == Orientation.portrait) && (width >= 304 && height <= 472)) {
        adjustedFontSize = android304x472portrait * scaleFactor;
        // debugPrint('in Android 304 x 472 height: $height\nwidth: $width');
        return adjustedFontSize;
      } else if (orientation == Orientation.landscape && (width >= 472 && height <= 304)) {
        adjustedFontSize = android304x472landscape * scaleFactor;
        return adjustedFontSize;
      }
      // 365 x 199 logical px
      // 960 x 540 dp
      // Sony Xperia E4 Dual
      double android365x199portrait = 10.0;
      double android365x199landscape = 10.0;
      if ((orientation == Orientation.portrait) && (width >= 365 && height <= 199)) {
        adjustedFontSize = android365x199portrait * scaleFactor;
        // debugPrint('in Android 304 x 472 height: $height\nwidth: $width');
        return adjustedFontSize;
      } else if (orientation == Orientation.landscape && (width >= 199 && height <= 365)) {
        adjustedFontSize = android365x199landscape * scaleFactor;
        return adjustedFontSize;
      }
      // 487 x 266 logical px
      // 960 x 540 dp
      // Sony Xperia T2 Ultra Dual
      double android487x266portrait = 10.0;
      double android487x266landscape = 10.0;
      if ((orientation == Orientation.portrait) && (width >= 487 && height <= 266)) {
        adjustedFontSize = android487x266portrait * scaleFactor;
        // debugPrint('in Android 487 x 266 height: $height\nwidth: $width');
        return adjustedFontSize;
      } else if (orientation == Orientation.landscape && (width >= 266 && height <= 487)) {
        adjustedFontSize = android487x266landscape * scaleFactor;
        return adjustedFontSize;
      }
      // Pixel 1080x2220 is actually 392 x 784 logical px
      //
      // 411 x 708 logical px
      // 1080 x 1920 dp
      // Nexus 6
      // Samsung Galaxy SIV
      // Sony Xperia Z
      // Google Pixel
      // Samsung Galaxy S5
      // Samsung Galaxy SV
      // LG Nexus 5X
      // Sony Xperia Z3
      // Sony Xperia Z5
      // LG GX F310L
      // Samsung Galaxy J7 Prime2
      // Samsung Galaxy J7 Prime
      // Samsung Galaxy Note10
      //
      // 411 x 841 logical px
      // 1080 x 2280 dp
      // Samsung Galaxy Note10
      //
      // 411 x 863 logical px
      // 1080 x 2340 dp
      // Samsung Galaxy A30
      // Samsung Galaxy A50s
      // Samsung Galaxy A50
      //
      // 411 x 885 logical px
      // 1080 x 2400 dp
      // Samsung Galaxy A70s
      // Samsung Galaxy A51
      // Samsung Galaxy S10 Lite
      // Samsung Galaxy A71
      // Samsung Galaxy Note20
      double android392x885portrait = 10.0;
      double android392x885landscape = 10.0;
      if ((orientation == Orientation.portrait) && (width >= 392 && height <= 885)) {
        adjustedFontSize = android392x885portrait * scaleFactor;
        // debugPrint('in Android 392 x 885 height: $height\nwidth: $width');
        return adjustedFontSize;
      } else if (orientation == Orientation.landscape && (width >= 885 && height <= 392)) {
        adjustedFontSize = android392x885landscape * scaleFactor;
        return adjustedFontSize;
      }
      // 548 x 944 logical px
      // 1440 x 2560 dp
      // Samsung Galaxy S6
      // Samsung Galaxy S7
      // Motorola Droid Turbo
      // LG G4
      // LG G3
      // Google Pixel XL
      // Samsung Galaxy S7 Edge
      // LG V10
      // Motorola Moto X Style
      // Samsung Galaxy Note5
      // Samsung Galaxy S6 Edge+
      // Samsung Galaxy Note4
      // Motorola Nexus 6
      //
      // 548 x 1121 logical px
      // 1440 x 3040 dp
      // Samsung Galaxy Note10+
      //
      // 548 x 1138 logical px
      // 1440 x 3088 dp
      // Samsung Galaxy Note20 Ultra
      //
      // 548 x 1180 logical px
      // 1440 x 3200 dp
      // Samsung Galaxy S20+
      // Samsung Galaxy S20 Ultra
      double android548x1180portrait = 10.0;
      double android548x1180landscape = 10.0;
      if ((orientation == Orientation.portrait) && (width >= 548 && height <= 1180)) {
        adjustedFontSize = android548x1180portrait * scaleFactor;
        // debugPrint('in Android 548 x 1180 height: $height\nwidth: $width');
        return adjustedFontSize;
      } else if (orientation == Orientation.landscape && (width >= 1180 && height <= 548)) {
        adjustedFontSize = android548x1180landscape * scaleFactor;
        return adjustedFontSize;
      }
      // 731 x 398 logical px
      // 1920 x 1080 dp
      // Sony Xperia X
      // Sony Xperia Z1
      // Sony Xperia Z3 Plus
      // Sony Xperia C4 Dual
      // Lenovo Vibe K4 Note
      // Lenovo K3 Note
      // Motorola Moto G4 Plus
      double android731x398portrait = 10.0;
      double android731x398landscape = 10.0;
      if ((orientation == Orientation.portrait) && (width >= 731 && height <= 398)) {
        adjustedFontSize = android731x398portrait * scaleFactor;
        // debugPrint('in Android 731 x 398 height: $height\nwidth: $width');
        return adjustedFontSize;
      } else if (orientation == Orientation.landscape && (width >= 398 && height <= 731)) {
        adjustedFontSize = android731x398landscape * scaleFactor;
        return adjustedFontSize;
      }

      // 975 x 531 logical px
      // 2560 x 1440 dp
      // Motorola Moto Z
      //
      // 1127 x 531 logical px
      // 2960 x 1440 dp
      // Samsung Galaxy S8
      // Samsung Galaxy S8+
      double android975x531portrait = 10.0;
      double android975x531landscape = 10.0;
      if ((orientation == Orientation.portrait) && (width >= 1127 && height <= 531)) {
        adjustedFontSize = android975x531portrait * scaleFactor;
        // debugPrint('in Android 1127 x 531 height: $height\nwidth: $width');
        return adjustedFontSize;
      } else if (orientation == Orientation.landscape && (width >= 531 && height <= 1127)) {
        adjustedFontSize = android975x531landscape * scaleFactor;
        return adjustedFontSize;
      }
    }
    // default font size
    return adjustedFontSize = 20.0;
  }
}
