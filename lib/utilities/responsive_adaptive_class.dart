import 'package:flutter/material.dart';
import 'dart:io';

class ResponsiveAdaptiveClass {
  dynamic orientation;
  dynamic size;
  dynamic height;
  dynamic width;
  double fontSizeValue = 0.0;
  double classFontSize = 0.0;
  double appBarTitleFontSize = 0.0;
  double elevatedButtonWidth = 0.0;
  double elevatedButtonHeight = 0.0;
  double classImageHeight = 0.0;
  double classImageWidth = 0.0;
  void selectPlatformType() {
    if (Platform.isAndroid) {
      // debugPrint('Running on Android');
    } else if (Platform.isIOS) {
      // debugPrint('Running on iOS');
      // if ((orientation == Orientation.portrait) && (width >= 744.0 && width <= 833)) {
      // } else if ((orientation == Orientation.portrait) && (width >= 834 && width <= 1024)) {
      // } else if ((orientation == Orientation.landscape) && (width >= 1024 && width <= 1079)) {
      // } else if ((orientation == Orientation.landscape) && (width >= 1133 && height <= 744.0)) {
      // } else if ((orientation == Orientation.landscape) && (width >= 1080 && width <= 1366)) {
      // } else if ((orientation == Orientation.portrait) && (width >= 375 && height <= 667)) {
      // } else if ((orientation == Orientation.landscape) && (width >= 667 && height <= 375)) {
      // } else if ((orientation == Orientation.portrait) && (width >= 375 && width <= 430)) {
      // } else if ((orientation == Orientation.landscape) && (width >= 480 && width <= 932)) {
      // } else if ((orientation == Orientation.portrait) && (width >= 800 && width <= 600)) {}
    } else if (Platform.isWindows) {
      debugPrint('Running on Windows');
    } else if (Platform.isLinux) {
      debugPrint('Running on Linux');
    } else if (Platform.isMacOS) {
      debugPrint('Running on macOS');
    } else {
      debugPrint('Running on an unknown platform');
    }
  }

  double selectSmallFontSize(double scaleFactor) {
    if (Platform.isIOS) {
      // iPhones: 320 w x 568 h
      // iPhone SE 1st gen
      // iPhone 5C
      // iPhone 5S
      // iPhone 5
      if ((orientation == Orientation.portrait) && (width == 320 && height == 568)) {
        classFontSize = 12.0 * scaleFactor;
        return classFontSize;
      } else if (orientation == Orientation.landscape && (width == 568 && height == 320)) {
        debugPrint('in else landscape: iPhones: small iPhones: 375 w x 667 h');
        classFontSize = 15.0 * scaleFactor;
        return classFontSize;
      }
      // iPhones: 375 w x 667 h
      // iPhone SE 3rd gen
      // iPhone SE 2nd gen
      // iPhone 8
      // iPhone 7
      // iPhone 6s
      // iPhone 6
      if ((orientation == Orientation.portrait) && (width == 375 && height == 667)) {
        classFontSize = 14.0 * scaleFactor;
        return classFontSize;
      } else if (orientation == Orientation.landscape && (width == 667 && height == 375)) {
        // debugPrint('in else landscape: iPhones: small iPhones: 375 w x 667 h');
        classFontSize = 13.0 * scaleFactor;
        return classFontSize;
      }
      // iPhones: 414 w x 736 h
      // iPhone 8 Plus
      // iPhone 7 Plus
      // iPhone 6s Plus
      // iPhone 6 Plus
      if ((orientation == Orientation.portrait) && (width == 414 && height == 736)) {
        classFontSize = 14.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && (width == 736 && height == 414)) {
        // debugPrint('in else landscape: iPhones: iPhones: 375 w x 812 h');
        classFontSize = 14.0 * scaleFactor;
        return classFontSize;
      }
      //  iPhones: 375 w x 812 h
      // iPhone 13 mini
      // iPhone 12 mini
      // iPhone 11 Pro
      // iPhone XS
      // iPhone X
      if ((orientation == Orientation.portrait) && (width == 375 && height == 812)) {
        classFontSize = 12.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && (width == 812 && height == 375)) {
        // debugPrint('in else landscape: iPhones: iPhones: 375 w x 812 h');
        classFontSize = 14.0 * scaleFactor;
        return classFontSize;
      }
      // iPhones: 390 w x 844 h
      // iPhone 14
      // iPhone 13
      // iPhone 13 Pro
      // iPhone 12
      // iPhone 12 Pro
      if ((orientation == Orientation.portrait) && ((width == 390) && (height == 844))) {
        // debugPrint('in else portrait: iPhones: 390 w x 844 h');
        classFontSize = 16.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 844) && (height == 390))) {
        // debugPrint('in else landscape: iPhones: 390 w x 844 h');
        classFontSize = 14.0 * scaleFactor;
        return classFontSize;
      }
      // iPhones: 393 w x 852 h
      // iPhone 15 Pro
      // iPhone 15
      // iPhone 14 Pro
      if ((orientation == Orientation.portrait) && ((width == 393) && (height == 852))) {
        // debugPrint('in else portrait: iPhones: 430 w x 932 h');
        classFontSize = 16.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 852) && (height == 393))) {
        // debugPrint('in else landscape: iPhones: 852 w x 393 h');
        classFontSize = 16.0 * scaleFactor;
        return classFontSize;
      }
      // iPhones: 414 w x 896 h
      // iPhone 11 Pro Max
      // iPhone 11
      // iPhone XR
      // iPhone XS Max
      if ((orientation == Orientation.portrait) && ((width == 414) && (height == 896))) {
        // debugPrint('in else portrait: iPhones: 430 w x 932 h');
        classFontSize = 16.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 896) && (height == 414))) {
        // debugPrint('in else landscape: iPhones: 430 w x 932 h');
        classFontSize = 16.0 * scaleFactor;
        return classFontSize;
      }
      // iPhones: 428 w x 926 h
      // iPhone 14 Plus
      // iPhone 13 Pro Max
      // iPhone 12 Pro Max
      if ((orientation == Orientation.portrait) && ((width == 428) && (height == 926))) {
        // debugPrint('in else portrait: iPhones: 428 w x 926 h');
        classFontSize = 16.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 926) && (height == 428))) {
        // debugPrint('in else landscape: iPhones: 428 w x 926 h');
        classFontSize = 16.0 * scaleFactor;
        return classFontSize;
      }
      // iPhones: 430 w x 932 h
      // iPhone 15 Pro Max
      // iPhone 15 Plus
      // iPhone 14 Pro Max
      if ((orientation == Orientation.portrait) && ((width == 430) && (height == 932))) {
        // debugPrint('in else portrait: iPhones: 430 w x 932 h');
        classFontSize = 16.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 932) && (height == 430))) {
        // debugPrint('in else landscape: iPhones: 430 w x 932 h');
        classFontSize = 16.0 * scaleFactor;
        return classFontSize;
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
      if ((orientation == Orientation.portrait) && ((width == 768) && (height == 1024))) {
        classFontSize = 20.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1024) && (height == 768))) {
        // debugPrint('in else landscape: iPads: 768 w x 1024  h');
        classFontSize = 30.0 * scaleFactor;
        return classFontSize;
      }
      // iPads: 810 w x 1080  h
      // iPad 9th gen
      // iPad 8th gen
      // iPad 7th gen
      if ((orientation == Orientation.portrait) && ((width == 810) && (height == 1080))) {
        classFontSize = 22.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1080) && (height == 810))) {
        // debugPrint('in else landscape: iPads: 810 w x 1080  h');
        classFontSize = 30.0 * scaleFactor;
        return classFontSize;
      }
      // iPads: 834 w x 1112  h
      // iPad Air (3rd gen)
      // iPad Pro (2nd gen 10.5")
      if ((orientation == Orientation.portrait) && ((width == 834) && (height == 1112))) {
        // debugPrint('in else portrait fonts: Pad Pro (2nd gen 10.5"): 834 w x 1112  h');
        classFontSize = 22.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1112) && (height == 834))) {
        // debugPrint('in else landscape fonts: Pad Pro (2nd gen 10.5"): 834 w x 1112  h');
        classFontSize = 30.0 * scaleFactor;
        return classFontSize;
      }
      // iPads: 744.0 w x 1113.0  h
      // iPad Mini (6th gen)
      if ((orientation == Orientation.portrait) && ((width == 744.0) && (height == 1133.0))) {
        // debugPrint('in else portrait fonts: iPad Mini (6th gen): 744.0 w x 1113.0  h');
        classFontSize = 22.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) &&
          ((width == 1133.0) && (height == 744.0))) {
        // debugPrint('in else landscape fonts: iPad Mini (6th gen): 744.0 w x 1113  h');
        classFontSize = 30.0 * scaleFactor;
        return classFontSize;
      }
      // iPads: 820 w x 1180  h
      // iPad 10th gen
      // iPad Air (5th gen)
      // iPad Air (4th gen)
      if ((orientation == Orientation.portrait) && ((width == 820) && (height == 1180))) {
        classFontSize = 22.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1180) && (height == 820))) {
        // debugPrint('in else landscape: iPads: 820 w x 1180  h');
        classFontSize = 30.0 * scaleFactor;
        return classFontSize;
      }
      // iPads: 834 w x 1194  h
      // iPad Pro (6th gen 11")
      // iPad Pro (5th gen 11")
      // iPad Pro (4th gen 11")
      // iPad Pro (3rd gen 11")
      if ((orientation == Orientation.portrait) && ((width == 834) && (height == 1194))) {
        classFontSize = 22.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1194) && (height == 834))) {
        // debugPrint('in else landscape: iPads: 834 w x 1194  h');
        classFontSize = 30.0 * scaleFactor;
        return classFontSize;
      }
      // iPads: 1024 w x 1366  h
      // iPad Pro (6th gen 12.9")
      // iPad Pro (5th gen 12.9")
      // iPad Pro (4th gen 12.9")
      // iPad Pro (3rd gen 12.9")
      // iPad Pro (2nd gen 12.9")
      //  iPad Pro (1st gen 12.9")
      if ((orientation == Orientation.portrait) && ((width == 1024) && (height == 1366))) {
        // debugPrint('in else font portrait: iPads: 1024 w x 1366  h');
        classFontSize = 20.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1366) && (height == 1024))) {
        // debugPrint('in else font landscape: iPads: 1024 w x 1366  h');
        classFontSize = 30.0 * scaleFactor;
        return classFontSize;
      }
    } //if platform

    return elevatedButtonHeight;
  }

  double selectMediumFontSize(double scaleFactor) {
    if (Platform.isIOS) {
      // iPhones: 320 w x 568 h
      // iPhone SE 1st gen
      // iPhone 5C
      // iPhone 5S
      // iPhone 5
      if ((orientation == Orientation.portrait) && (width == 320 && height == 568)) {
        classFontSize = 12.0 * scaleFactor;
        return classFontSize;
      } else if (orientation == Orientation.landscape && (width == 568 && height == 320)) {
        debugPrint('in else landscape: iPhones: small iPhones: 375 w x 667 h');
        classFontSize = 15.0 * scaleFactor;
        return classFontSize;
      }
      // iPhones: 375 w x 667 h
      // iPhone SE 3rd gen
      // iPhone SE 2nd gen
      // iPhone 8
      // iPhone 7
      // iPhone 6s
      // iPhone 6
      if ((orientation == Orientation.portrait) && (width == 375 && height == 667)) {
        classFontSize = 14.0 * scaleFactor;
        return classFontSize;
      } else if (orientation == Orientation.landscape && (width == 667 && height == 375)) {
        // debugPrint('in else landscape: iPhones: small iPhones: 375 w x 667 h');
        classFontSize = 13.0 * scaleFactor;
        return classFontSize;
      }
      // iPhones: 414 w x 736 h
      // iPhone 8 Plus
      // iPhone 7 Plus
      // iPhone 6s Plus
      // iPhone 6 Plus
      if ((orientation == Orientation.portrait) && (width == 414 && height == 736)) {
        classFontSize = 14.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && (width == 736 && height == 414)) {
        // debugPrint('in else landscape: iPhones: iPhones: 375 w x 812 h');
        classFontSize = 14.0 * scaleFactor;
        return classFontSize;
      }
      //  iPhones: 375 w x 812 h
      // iPhone 13 mini
      // iPhone 12 mini
      // iPhone 11 Pro
      // iPhone XS
      // iPhone X
      if ((orientation == Orientation.portrait) && (width == 375 && height == 812)) {
        classFontSize = 12.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && (width == 812 && height == 375)) {
        // debugPrint('in else landscape: iPhones: iPhones: 375 w x 812 h');
        classFontSize = 14.0 * scaleFactor;
        return classFontSize;
      }
      // iPhones: 390 w x 844 h
      // iPhone 14
      // iPhone 13
      // iPhone 13 Pro
      // iPhone 12
      // iPhone 12 Pro
      if ((orientation == Orientation.portrait) && ((width == 390) && (height == 844))) {
        // debugPrint('in else portrait: iPhones: 390 w x 844 h');
        classFontSize = 16.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 844) && (height == 390))) {
        // debugPrint('in else landscape: iPhones: 390 w x 844 h');
        classFontSize = 14.0 * scaleFactor;
        return classFontSize;
      }
      // iPhones: 393 w x 852 h
      // iPhone 15 Pro
      // iPhone 15
      // iPhone 14 Pro
      if ((orientation == Orientation.portrait) && ((width == 393) && (height == 852))) {
        // debugPrint('in else portrait: iPhones: 430 w x 932 h');
        classFontSize = 16.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 852) && (height == 393))) {
        // debugPrint('in else landscape: iPhones: 852 w x 393 h');
        classFontSize = 16.0 * scaleFactor;
        return classFontSize;
      }
      // iPhones: 414 w x 896 h
      // iPhone 11 Pro Max
      // iPhone 11
      // iPhone XR
      // iPhone XS Max
      if ((orientation == Orientation.portrait) && ((width == 414) && (height == 896))) {
        // debugPrint('in else portrait: iPhones: 430 w x 932 h');
        classFontSize = 16.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 896) && (height == 414))) {
        // debugPrint('in else landscape: iPhones: 430 w x 932 h');
        classFontSize = 16.0 * scaleFactor;
        return classFontSize;
      }
      // iPhones: 428 w x 926 h
      // iPhone 14 Plus
      // iPhone 13 Pro Max
      // iPhone 12 Pro Max
      if ((orientation == Orientation.portrait) && ((width == 428) && (height == 926))) {
        // debugPrint('in else portrait: iPhones: 428 w x 926 h');
        classFontSize = 16.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 926) && (height == 428))) {
        // debugPrint('in else landscape: iPhones: 428 w x 926 h');
        classFontSize = 16.0 * scaleFactor;
        return classFontSize;
      }
      // iPhones: 430 w x 932 h
      // iPhone 15 Pro Max
      // iPhone 15 Plus
      // iPhone 14 Pro Max
      if ((orientation == Orientation.portrait) && ((width == 430) && (height == 932))) {
        // debugPrint('in else portrait: iPhones: 430 w x 932 h');
        classFontSize = 16.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 932) && (height == 430))) {
        // debugPrint('in else landscape: iPhones: 430 w x 932 h');
        classFontSize = 16.0 * scaleFactor;
        return classFontSize;
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
      if ((orientation == Orientation.portrait) && ((width == 768) && (height == 1024))) {
        classFontSize = 20.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1024) && (height == 768))) {
        // debugPrint('in else landscape: iPads: 768 w x 1024  h');
        classFontSize = 30.0 * scaleFactor;
        return classFontSize;
      }
      // iPads: 810 w x 1080  h
      // iPad 9th gen
      // iPad 8th gen
      // iPad 7th gen
      if ((orientation == Orientation.portrait) && ((width == 810) && (height == 1080))) {
        classFontSize = 22.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1080) && (height == 810))) {
        // debugPrint('in else landscape: iPads: 810 w x 1080  h');
        classFontSize = 30.0 * scaleFactor;
        return classFontSize;
      }
      // iPads: 834 w x 1112  h
      // iPad Air (3rd gen)
      // iPad Pro (2nd gen 10.5")
      if ((orientation == Orientation.portrait) && ((width == 834) && (height == 1112))) {
        // debugPrint('in else portrait fonts: Pad Pro (2nd gen 10.5"): 834 w x 1112  h');
        classFontSize = 22.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1112) && (height == 834))) {
        // debugPrint('in else landscape fonts: Pad Pro (2nd gen 10.5"): 834 w x 1112  h');
        classFontSize = 30.0 * scaleFactor;
        return classFontSize;
      }
      // iPads: 744.0 w x 1113.0  h
      // iPad Mini (6th gen)
      if ((orientation == Orientation.portrait) && ((width == 744.0) && (height == 1133.0))) {
        // debugPrint('in else portrait fonts: iPad Mini (6th gen): 744.0 w x 1113.0  h');
        classFontSize = 22.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) &&
          ((width == 1133.0) && (height == 744.0))) {
        // debugPrint('in else landscape fonts: iPad Mini (6th gen): 744.0 w x 1113  h');
        classFontSize = 30.0 * scaleFactor;
        return classFontSize;
      }
      // iPads: 820 w x 1180  h
      // iPad 10th gen
      // iPad Air (5th gen)
      // iPad Air (4th gen)
      if ((orientation == Orientation.portrait) && ((width == 820) && (height == 1180))) {
        classFontSize = 22.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1180) && (height == 820))) {
        // debugPrint('in else landscape: iPads: 820 w x 1180  h');
        classFontSize = 30.0 * scaleFactor;
        return classFontSize;
      }
      // iPads: 834 w x 1194  h
      // iPad Pro (6th gen 11")
      // iPad Pro (5th gen 11")
      // iPad Pro (4th gen 11")
      // iPad Pro (3rd gen 11")
      if ((orientation == Orientation.portrait) && ((width == 834) && (height == 1194))) {
        classFontSize = 22.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1194) && (height == 834))) {
        // debugPrint('in else landscape: iPads: 834 w x 1194  h');
        classFontSize = 30.0 * scaleFactor;
        return classFontSize;
      }
      // iPads: 1024 w x 1366  h
      // iPad Pro (6th gen 12.9")
      // iPad Pro (5th gen 12.9")
      // iPad Pro (4th gen 12.9")
      // iPad Pro (3rd gen 12.9")
      // iPad Pro (2nd gen 12.9")
      //  iPad Pro (1st gen 12.9")
      if ((orientation == Orientation.portrait) && ((width == 1024) && (height == 1366))) {
        // debugPrint('in else font portrait: iPads: 1024 w x 1366  h');
        classFontSize = 20.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1366) && (height == 1024))) {
        // debugPrint('in else font landscape: iPads: 1024 w x 1366  h');
        classFontSize = 30.0 * scaleFactor;
        return classFontSize;
      }
    } //if platform

    return elevatedButtonHeight;
  }

  double selectLargeFontSize(double scaleFactor) {
    if (Platform.isIOS) {
      // iPhones: 320 w x 568 h
      // iPhone SE 1st gen
      // iPhone 5C
      // iPhone 5S
      // iPhone 5
      if ((orientation == Orientation.portrait) && (width == 320 && height == 568)) {
        classFontSize = 12.0 * scaleFactor;
        return classFontSize;
      } else if (orientation == Orientation.landscape && (width == 568 && height == 320)) {
        debugPrint('in else landscape: iPhones: small iPhones: 375 w x 667 h');
        classFontSize = 15.0 * scaleFactor;
        return classFontSize;
      }
      // iPhones: 375 w x 667 h
      // iPhone SE 3rd gen
      // iPhone SE 2nd gen
      // iPhone 8
      // iPhone 7
      // iPhone 6s
      // iPhone 6
      if ((orientation == Orientation.portrait) && (width == 375 && height == 667)) {
        classFontSize = 14.0 * scaleFactor;
        return classFontSize;
      } else if (orientation == Orientation.landscape && (width == 667 && height == 375)) {
        // debugPrint('in else landscape: iPhones: small iPhones: 375 w x 667 h');
        classFontSize = 13.0 * scaleFactor;
        return classFontSize;
      }
      // iPhones: 414 w x 736 h
      // iPhone 8 Plus
      // iPhone 7 Plus
      // iPhone 6s Plus
      // iPhone 6 Plus
      if ((orientation == Orientation.portrait) && (width == 414 && height == 736)) {
        classFontSize = 14.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && (width == 736 && height == 414)) {
        // debugPrint('in else landscape: iPhones: iPhones: 375 w x 812 h');
        classFontSize = 14.0 * scaleFactor;
        return classFontSize;
      }
      //  iPhones: 375 w x 812 h
      // iPhone 13 mini
      // iPhone 12 mini
      // iPhone 11 Pro
      // iPhone XS
      // iPhone X
      if ((orientation == Orientation.portrait) && (width == 375 && height == 812)) {
        classFontSize = 12.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && (width == 812 && height == 375)) {
        // debugPrint('in else landscape: iPhones: iPhones: 375 w x 812 h');
        classFontSize = 14.0 * scaleFactor;
        return classFontSize;
      }
      // iPhones: 390 w x 844 h
      // iPhone 14
      // iPhone 13
      // iPhone 13 Pro
      // iPhone 12
      // iPhone 12 Pro
      if ((orientation == Orientation.portrait) && ((width == 390) && (height == 844))) {
        // debugPrint('in else portrait: iPhones: 390 w x 844 h');
        classFontSize = 16.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 844) && (height == 390))) {
        // debugPrint('in else landscape: iPhones: 390 w x 844 h');
        classFontSize = 14.0 * scaleFactor;
        return classFontSize;
      }
      // iPhones: 393 w x 852 h
      // iPhone 15 Pro
      // iPhone 15
      // iPhone 14 Pro
      if ((orientation == Orientation.portrait) && ((width == 393) && (height == 852))) {
        // debugPrint('in else portrait: iPhones: 430 w x 932 h');
        classFontSize = 16.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 852) && (height == 393))) {
        // debugPrint('in else landscape: iPhones: 852 w x 393 h');
        classFontSize = 16.0 * scaleFactor;
        return classFontSize;
      }
      // iPhones: 414 w x 896 h
      // iPhone 11 Pro Max
      // iPhone 11
      // iPhone XR
      // iPhone XS Max
      if ((orientation == Orientation.portrait) && ((width == 414) && (height == 896))) {
        // debugPrint('in else portrait: iPhones: 430 w x 932 h');
        classFontSize = 16.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 896) && (height == 414))) {
        // debugPrint('in else landscape: iPhones: 430 w x 932 h');
        classFontSize = 16.0 * scaleFactor;
        return classFontSize;
      }
      // iPhones: 428 w x 926 h
      // iPhone 14 Plus
      // iPhone 13 Pro Max
      // iPhone 12 Pro Max
      if ((orientation == Orientation.portrait) && ((width == 428) && (height == 926))) {
        // debugPrint('in else portrait: iPhones: 428 w x 926 h');
        classFontSize = 16.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 926) && (height == 428))) {
        // debugPrint('in else landscape: iPhones: 428 w x 926 h');
        classFontSize = 16.0 * scaleFactor;
        return classFontSize;
      }
      // iPhones: 430 w x 932 h
      // iPhone 15 Pro Max
      // iPhone 15 Plus
      // iPhone 14 Pro Max
      if ((orientation == Orientation.portrait) && ((width == 430) && (height == 932))) {
        // debugPrint('in else portrait: iPhones: 430 w x 932 h');
        classFontSize = 16.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 932) && (height == 430))) {
        // debugPrint('in else landscape: iPhones: 430 w x 932 h');
        classFontSize = 16.0 * scaleFactor;
        return classFontSize;
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
      if ((orientation == Orientation.portrait) && ((width == 768) && (height == 1024))) {
        classFontSize = 20.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1024) && (height == 768))) {
        // debugPrint('in else landscape: iPads: 768 w x 1024  h');
        classFontSize = 30.0 * scaleFactor;
        return classFontSize;
      }
      // iPads: 810 w x 1080  h
      // iPad 9th gen
      // iPad 8th gen
      // iPad 7th gen
      if ((orientation == Orientation.portrait) && ((width == 810) && (height == 1080))) {
        classFontSize = 22.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1080) && (height == 810))) {
        // debugPrint('in else landscape: iPads: 810 w x 1080  h');
        classFontSize = 30.0 * scaleFactor;
        return classFontSize;
      }
      // iPads: 834 w x 1112  h
      // iPad Air (3rd gen)
      // iPad Pro (2nd gen 10.5")
      if ((orientation == Orientation.portrait) && ((width == 834) && (height == 1112))) {
        // debugPrint('in else portrait fonts: Pad Pro (2nd gen 10.5"): 834 w x 1112  h');
        classFontSize = 22.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1112) && (height == 834))) {
        // debugPrint('in else landscape fonts: Pad Pro (2nd gen 10.5"): 834 w x 1112  h');
        classFontSize = 30.0 * scaleFactor;
        return classFontSize;
      }
      // iPads: 744.0 w x 1113.0  h
      // iPad Mini (6th gen)
      if ((orientation == Orientation.portrait) && ((width == 744.0) && (height == 1133.0))) {
        // debugPrint('in else portrait fonts: iPad Mini (6th gen): 744.0 w x 1113.0  h');
        classFontSize = 22.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) &&
          ((width == 1133.0) && (height == 744.0))) {
        // debugPrint('in else landscape fonts: iPad Mini (6th gen): 744.0 w x 1113  h');
        classFontSize = 30.0 * scaleFactor;
        return classFontSize;
      }
      // iPads: 820 w x 1180  h
      // iPad 10th gen
      // iPad Air (5th gen)
      // iPad Air (4th gen)
      if ((orientation == Orientation.portrait) && ((width == 820) && (height == 1180))) {
        classFontSize = 22.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1180) && (height == 820))) {
        // debugPrint('in else landscape: iPads: 820 w x 1180  h');
        classFontSize = 30.0 * scaleFactor;
        return classFontSize;
      }
      // iPads: 834 w x 1194  h
      // iPad Pro (6th gen 11")
      // iPad Pro (5th gen 11")
      // iPad Pro (4th gen 11")
      // iPad Pro (3rd gen 11")
      if ((orientation == Orientation.portrait) && ((width == 834) && (height == 1194))) {
        classFontSize = 22.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1194) && (height == 834))) {
        // debugPrint('in else landscape: iPads: 834 w x 1194  h');
        classFontSize = 30.0 * scaleFactor;
        return classFontSize;
      }
      // iPads: 1024 w x 1366  h
      // iPad Pro (6th gen 12.9")
      // iPad Pro (5th gen 12.9")
      // iPad Pro (4th gen 12.9")
      // iPad Pro (3rd gen 12.9")
      // iPad Pro (2nd gen 12.9")
      //  iPad Pro (1st gen 12.9")
      if ((orientation == Orientation.portrait) && ((width == 1024) && (height == 1366))) {
        // debugPrint('in else font portrait: iPads: 1024 w x 1366  h');
        classFontSize = 20.0 * scaleFactor;
        return classFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1366) && (height == 1024))) {
        // debugPrint('in else font landscape: iPads: 1024 w x 1366  h');
        classFontSize = 30.0 * scaleFactor;
        return classFontSize;
      }
    } //if platform

    return elevatedButtonHeight;
  }

  double selectAppBarTitleFontSize(double scaleFactor) {
    if (Platform.isIOS) {
      // iPhones: 320 w x 568 h
      // iPhone SE 1st gen
      // iPhone 5C
      // iPhone 5S
      // iPhone 5
      if ((orientation == Orientation.portrait) && (width == 320 && height == 568)) {
        appBarTitleFontSize = 13.0 * scaleFactor;
        return appBarTitleFontSize;
      } else if (orientation == Orientation.landscape && (width == 568 && height == 320)) {
        // debugPrint('in else landscape: iPhones: small iPhones: 375 w x 667 h');
        appBarTitleFontSize = 18.0 * scaleFactor;
        return appBarTitleFontSize;
      }
      // iPhones: 375 w x 667 h
      // iPhone SE 3rd gen
      // iPhone SE 2nd gen
      // iPhone 8
      // iPhone 7
      // iPhone 6s
      // iPhone 6
      if ((orientation == Orientation.portrait) && (width == 375 && height == 667)) {
        appBarTitleFontSize = 18.0 * scaleFactor;
        return appBarTitleFontSize;
      } else if (orientation == Orientation.landscape && (width == 667 && height == 375)) {
        // debugPrint('in else landscape: iPhones: small iPhones: 375 w x 667 h');
        appBarTitleFontSize = 18.0 * scaleFactor;
        return appBarTitleFontSize;
      }
      // iPhones: 414 w x 736 h
      // iPhone 8 Plus
      // iPhone 7 Plus
      // iPhone 6s Plus
      // iPhone 6 Plus
      if ((orientation == Orientation.portrait) && (width == 414 && height == 736)) {
        appBarTitleFontSize = 18.0 * scaleFactor;
        return appBarTitleFontSize;
      } else if ((orientation == Orientation.landscape) && (width == 736 && height == 414)) {
        // debugPrint('in else landscape: iPhones: iPhones: 375 w x 812 h');
        appBarTitleFontSize = 18.0 * scaleFactor;
        return appBarTitleFontSize;
      }
      //  iPhones: 375 w x 812 h
      // iPhone 13 mini
      // iPhone 12 mini
      // iPhone 11 Pro
      // iPhone XS
      // iPhone X
      if ((orientation == Orientation.portrait) && (width == 375 && height == 812)) {
        appBarTitleFontSize = 18.0 * scaleFactor;
        return appBarTitleFontSize;
      } else if ((orientation == Orientation.landscape) && (width == 812 && height == 375)) {
        // debugPrint('in else landscape: iPhones: iPhones: 375 w x 812 h');
        appBarTitleFontSize = 18.0 * scaleFactor;
        return appBarTitleFontSize;
      }
      // iPhones: 390 w x 844 h
      // iPhone 14
      // iPhone 13
      // iPhone 13 Pro
      // iPhone 12
      // iPhone 12 Pro
      if ((orientation == Orientation.portrait) && ((width == 390) && (height == 844))) {
        // debugPrint('in else portrait: iPhones: 390 w x 844 h');
        appBarTitleFontSize = 18.0 * scaleFactor;
        return appBarTitleFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 844) && (height == 390))) {
        // debugPrint('in else landscape: iPhones: 390 w x 844 h');
        appBarTitleFontSize = 18.0 * scaleFactor;
        return appBarTitleFontSize;
      }
      // iPhones: 393 w x 852 h
      // iPhone 15 Pro
      // iPhone 15
      // iPhone 14 Pro
      if ((orientation == Orientation.portrait) && ((width == 393) && (height == 852))) {
        // debugPrint('in else portrait: iPhones: 430 w x 932 h');
        appBarTitleFontSize = 18.0 * scaleFactor;
        return appBarTitleFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 852) && (height == 393))) {
        // debugPrint('in else landscape: iPhones: 852w x 393 h');
        appBarTitleFontSize = 18.0 * scaleFactor;
        return appBarTitleFontSize;
      }
      // iPhones: 414 w x 896 h
      // iPhone 11 Pro Max
      // iPhone 11
      // iPhone XR
      // iPhone XS Max
      if ((orientation == Orientation.portrait) && ((width == 414) && (height == 896))) {
        // debugPrint('in else portrait: iPhones: 430 w x 932 h');
        appBarTitleFontSize = 18.0 * scaleFactor;
        return appBarTitleFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 896) && (height == 414))) {
        // debugPrint('in else landscape: iPhones: 430 w x 932 h');
        appBarTitleFontSize = 18.0 * scaleFactor;
        return appBarTitleFontSize;
      }
      // iPhones: 428 w x 926 h
      // iPhone 14 Plus
      // iPhone 13 Pro Max
      // iPhone 12 Pro Max
      if ((orientation == Orientation.portrait) && ((width == 428) && (height == 926))) {
        // debugPrint('in else portrait: iPhones: 428 w x 926 h');
        appBarTitleFontSize = 18.0 * scaleFactor;
        return appBarTitleFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 926) && (height == 428))) {
        // debugPrint('in else landscape: iPhones: 428 w x 926 h');
        appBarTitleFontSize = 18.0 * scaleFactor;
        return appBarTitleFontSize;
      }
      // iPhones: 430 w x 932 h
      // iPhone 15 Pro Max
      // iPhone 15 Plus
      // iPhone 14 Pro Max
      if ((orientation == Orientation.portrait) && ((width == 430) && (height == 932))) {
        // debugPrint('in else portrait: iPhones: 430 w x 932 h');
        appBarTitleFontSize = 18.0 * scaleFactor;
        return appBarTitleFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 932) && (height == 430))) {
        // debugPrint('in else landscape: iPhones: 430 w x 932 h');
        appBarTitleFontSize = 18.0 * scaleFactor;
        return appBarTitleFontSize;
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
      if ((orientation == Orientation.portrait) && ((width == 768) && (height == 1024))) {
        appBarTitleFontSize = 22.0 * scaleFactor;
        return appBarTitleFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1024) && (height == 768))) {
        // debugPrint('in else landscape: iPads: 768 w x 1024  h');
        appBarTitleFontSize = 30.0 * scaleFactor;
        return appBarTitleFontSize;
      }
      // iPads: 810 w x 1080  h
      // iPad 9th gen
      // iPad 8th gen
      // iPad 7th gen
      if ((orientation == Orientation.portrait) && ((width == 810) && (height == 1080))) {
        appBarTitleFontSize = 22.0 * scaleFactor;
        return appBarTitleFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1080) && (height == 810))) {
        // debugPrint('in else landscape: iPads: 810 w x 1080  h');
        appBarTitleFontSize = 30.0 * scaleFactor;
        return appBarTitleFontSize;
      }
      // iPads: 834 w x 1112  h
      // iPad Air (3rd gen)
      // iPad Pro (2nd gen 10.5")
      if ((orientation == Orientation.portrait) && ((width == 834) && (height == 1112))) {
        appBarTitleFontSize = 22.0 * scaleFactor;
        return appBarTitleFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1112) && (height == 834))) {
        // debugPrint('in else landscape: iPads: 834 w x 1112  h');
        appBarTitleFontSize = 30.0 * scaleFactor;
        return appBarTitleFontSize;
      }
      // iPads: 744.0 w x 1113.0  h
      // iPad Mini (6th gen)
      if ((orientation == Orientation.portrait) && ((width == 744.0) && (height == 1133.0))) {
        appBarTitleFontSize = 22.0 * scaleFactor;
        return appBarTitleFontSize;
      } else if ((orientation == Orientation.landscape) &&
          ((width == 1133.0) && (height == 744.0))) {
        // debugPrint('in else landscape: iPads: 744.0 w x 1113.0  h');
        appBarTitleFontSize = 30.0 * scaleFactor;
        return appBarTitleFontSize;
      }
      // iPads: 820 w x 1180  h
      // iPad 10th gen
      // iPad Air (5th gen)
      // iPad Air (4th gen)
      if ((orientation == Orientation.portrait) && ((width == 820) && (height == 1180))) {
        appBarTitleFontSize = 22.0 * scaleFactor;
        return appBarTitleFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1180) && (height == 820))) {
        // debugPrint('in else landscape: iPads: 820 w x 1180  h');
        appBarTitleFontSize = 30.0 * scaleFactor;
        return appBarTitleFontSize;
      }
      // iPads: 834 w x 1194  h
      // iPad Pro (6th gen 11")
      // iPad Pro (5th gen 11")
      // iPad Pro (4th gen 11")
      // iPad Pro (3rd gen 11")
      if ((orientation == Orientation.portrait) && ((width == 834) && (height == 1194))) {
        appBarTitleFontSize = 22.0 * scaleFactor;
        return appBarTitleFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1194) && (height == 834))) {
        // debugPrint('in else landscape: iPads: 834 w x 1194  h');
        appBarTitleFontSize = 30.0 * scaleFactor;
        return appBarTitleFontSize;
      }
      // iPads: 1024 w x 1366  h
      // iPad Pro (6th gen 12.9")
      // iPad Pro (5th gen 12.9")
      // iPad Pro (4th gen 12.9")
      // iPad Pro (3rd gen 12.9")
      // iPad Pro (2nd gen 12.9")
      //  iPad Pro (1st gen 12.9")
      if ((orientation == Orientation.portrait) && ((width == 1024) && (height == 1366))) {
        appBarTitleFontSize = 18.0 * scaleFactor;
        return appBarTitleFontSize;
      } else if ((orientation == Orientation.landscape) && ((width == 1366) && (height == 1024))) {
        // debugPrint('in else landscape: iPads: 1024 w x 1366  h');
        appBarTitleFontSize = 30.0 * scaleFactor;
        return appBarTitleFontSize;
      }
    } //if platform

    return elevatedButtonHeight;
  }

  double selectClassImageHeight() {
    if (Platform.isIOS) {
      // small iPhones: 375 w x 667 h
      if ((orientation == Orientation.portrait) && (width >= 375 && height <= 667)) {
        classImageHeight = height * 0.12;
        // debugPrint('375 w x 667 h Portrait classImageHeight: $classImageHeight');
        return classImageHeight;
      } else if ((orientation == Orientation.landscape) &&
          (width >= 667 && height <= 375 && (width <= 811))) {
        classImageHeight = height * 0.15;
        // debugPrint('375 w x 667 h Landscape classImageHeight: $classImageHeight');
        return classImageHeight;
      }
      // iPhones: 375 w x 812 h
      if ((orientation == Orientation.portrait) && (width >= 375 && height <= 812)) {
        classImageHeight = height * 0.10;
        // debugPrint('375 w x 812 h Portrait classImageHeight: $classImageHeight');
        return classImageHeight;
      } else if ((orientation == Orientation.landscape) && (width >= 812 && height <= 375)) {
        classImageHeight = height * 0.15;
        // debugPrint('375 w x 812 h Landscape classImageHeight: $classImageHeight');
        return classImageHeight;
      }
      // iPhones: 390 w to 430 w x 844 h to 932 h
      if ((orientation == Orientation.portrait) &&
          ((width >= 390 && width <= 430) && (height >= 844 && height <= 932))) {
        classImageHeight = height * 0.22; //Image H
        // debugPrint('390 w x 932 h Portrait classImageHeight: $classImageHeight');
        return classImageHeight;
      } else if ((orientation == Orientation.landscape) && (width >= 844 && height <= 430)) {
        classImageHeight = height * 0.15;
        // debugPrint('390 w x 932 h Landscape classImageHeight: $classImageHeight');
        return classImageHeight;
      }
      // iPads: 744.0 w to 834 w x 1024 h to 1194 h
      if ((orientation == Orientation.portrait) &&
          ((width >= 744.0 && width <= 834) && (height >= 1024 && height <= 1194))) {
        classImageHeight = height * 0.0935;
        // debugPrint(
        //     'iPads: 744.0 w to 834 w x 1024 h to 1194 h Portrait classImageHeight: $classImageHeight');
        return classImageHeight;
      } else if ((orientation == Orientation.landscape) &&
          ((height >= 744.0 && height <= 834) && (width >= 1024 && width <= 1194))) {
        classImageHeight = height * 0.15;
        // debugPrint(
        //     'iPads: 744.0 w to 834 w x 1024 h to 1194 h Landscape classImageHeight: $classImageHeight');
        return classImageHeight;
      }
    }

    return classImageHeight;
  }

  double selectClassImageWidth() {
    if (Platform.isIOS) {
      // small iPhones: 375 w x 667 h
      if ((orientation == Orientation.portrait) && (width >= 375 && height <= 667)) {
        classImageWidth = width * 0.1;
        // debugPrint('375 w x 667 h Portrait classImageWidth: $classImageWidth');
        return classImageWidth;
      } else if ((orientation == Orientation.landscape) &&
          (width >= 667 && height <= 375) &&
          (width <= 811)) {
        classImageWidth = width * 0.085;
        // debugPrint('375 w x 667 h Landscape classImageWidth: $classImageWidth');
        return classImageWidth;
      }
      // iPhones: 375 w x 812 h
      if ((orientation == Orientation.portrait) && (width >= 375 && height <= 812)) {
        classImageWidth = width * 0.21;
        // debugPrint('375 w x 812 h Portrait classImageWidth: $classImageWidth');
        return classImageWidth;
      } else if ((orientation == Orientation.landscape) && (width >= 812 && height <= 375)) {
        classImageWidth = width * 0.07;
        // debugPrint('375 w x 812 h Landscape classImageWidth: $classImageWidth');
        return classImageWidth;
      }
      // iPhones: 390 w to 430 w x 844 h to 932 h
      if ((orientation == Orientation.portrait) &&
          ((width >= 390 && width <= 430) && (height >= 844 && height <= 932))) {
        classImageWidth = width * 0.3;
        // debugPrint('390 w x 932 h Portrait classImageWidth: $classImageWidth');
        return classImageWidth;
      } else if ((orientation == Orientation.landscape) && (width >= 844 && height <= 430)) {
        classImageWidth = width * 0.06;
        // debugPrint('390 w x 932 h Landscape classImageWidth: $classImageWidth');
        return classImageWidth;
      }
      // iPads: 744.0 w to 834 w x 1024 h to 1194 h
      if ((orientation == Orientation.portrait) &&
          ((width >= 744.0 && width <= 834) && (height >= 1024 && height <= 1194))) {
        classImageWidth = width * 0.20;
        // debugPrint(
        //     'iPads: 744.0 w to 834 w x 1024 h to 1194 h Portrait classImageWidth: $classImageWidth');
        return classImageHeight;
      } else if ((orientation == Orientation.landscape) &&
          ((height >= 744.0 && height <= 834) && (width >= 1024 && width <= 1194))) {
        classImageWidth = width * 0.07;
        // debugPrint(
        //     'iPads: 744.0 w to 834 w x 1024 h to 1194 h Landscape classImageWidth: $classImageWidth');
        return classImageWidth;
      }
    }

    return classImageWidth;
  }

  double selectElevatedButtonHeight(double scaleFactor) {
    if (Platform.isIOS) {
      // iPhones: 320 w x 568 h
      // iPhone SE 1st gen
      // iPhone 5C
      // iPhone 5S
      // iPhone 5
      if ((orientation == Orientation.portrait) && (width == 320 && height == 568)) {
        elevatedButtonHeight = height / 10.0 * scaleFactor;
        return elevatedButtonHeight;
      } else if (orientation == Orientation.landscape && (width == 568 && height == 320)) {
        // debugPrint('in else landscape: iPhones: small iPhones: 375 w x 667 h');
        elevatedButtonHeight = height / 6.6 * scaleFactor;
        return elevatedButtonHeight;
      }
      // iPhones: 375 w x 667 h
      // iPhone SE 3rd gen
      // iPhone SE 2nd gen
      // iPhone 8
      // iPhone 7
      // iPhone 6s
      // iPhone 6
      if ((orientation == Orientation.portrait) && (width == 375 && height == 667)) {
        elevatedButtonHeight = height / 10.0 * scaleFactor;
        return elevatedButtonHeight;
      } else if (orientation == Orientation.landscape && (width == 667 && height == 375)) {
        // debugPrint('in else landscape: iPhones: small iPhones: 375 w x 667 h');
        elevatedButtonHeight = height / 6.6 * scaleFactor;
        return elevatedButtonHeight;
      }
      // iPhones: 414 w x 736 h
      // iPhone 8 Plus
      // iPhone 7 Plus
      // iPhone 6s Plus
      // iPhone 6 Plus
      if ((orientation == Orientation.portrait) && (width == 414 && height == 736)) {
        elevatedButtonHeight = height / 11.0 * scaleFactor;
        return elevatedButtonHeight;
      } else if ((orientation == Orientation.landscape) && (width == 736 && height == 414)) {
        // debugPrint('in else landscape: iPhones: iPhones: 375 w x 812 h');
        elevatedButtonHeight = height / 7 * scaleFactor;
        return elevatedButtonHeight;
      }
      //  iPhones: 375 w x 812 h
      // iPhone 13 mini
      // iPhone 12 mini
      // iPhone 11 Pro
      // iPhone XS
      // iPhone X
      if ((orientation == Orientation.portrait) && (width == 375 && height == 812)) {
        elevatedButtonHeight = height / 13.0 * scaleFactor;
        return elevatedButtonHeight;
      } else if ((orientation == Orientation.landscape) && (width == 812 && height == 375)) {
        // debugPrint('in else landscape: iPhones: iPhones: 375 w x 812 h');
        elevatedButtonHeight = height / 7 * scaleFactor;
        return elevatedButtonHeight;
      }
      // iPhones: 390 w x 844 h
      // iPhone 14
      // iPhone 13
      // iPhone 13 Pro
      // iPhone 12
      // iPhone 12 Pro
      if ((orientation == Orientation.portrait) && ((width == 390) && (height == 844))) {
        // debugPrint('in else portrait: iPhones: 390 w x 844 h');
        elevatedButtonHeight = height / 8.3 * scaleFactor;
        return elevatedButtonHeight;
      } else if ((orientation == Orientation.landscape) && ((width == 844) && (height == 390))) {
        // debugPrint('in else landscape: iPhones: 390 w x 844 h');
        elevatedButtonHeight = height / 6.6 * scaleFactor;
        return elevatedButtonHeight;
      }
      // iPhones: 393 w x 852 h
      // iPhone 15 Pro
      // iPhone 15
      // iPhone 14 Pro
      if ((orientation == Orientation.portrait) && ((width == 393) && (height == 852))) {
        // debugPrint('in else portrait: iPhones: 430 w x 932 h');
        elevatedButtonHeight = height / 8.3 * scaleFactor;
        return elevatedButtonHeight;
      } else if ((orientation == Orientation.landscape) && ((width == 852) && (height == 393))) {
        // debugPrint('in else landscape: iPhones: 852w x 393 h');
        elevatedButtonHeight = height / 6.6 * scaleFactor;
        return elevatedButtonHeight;
      }
      // iPhones: 414 w x 896 h
      // iPhone 11 Pro Max
      // iPhone 11
      // iPhone XR
      // iPhone XS Max
      if ((orientation == Orientation.portrait) && ((width == 414) && (height == 896))) {
        // debugPrint('in else portrait: iPhones: 430 w x 932 h');
        elevatedButtonHeight = height / 8.3 * scaleFactor;
        return elevatedButtonHeight;
      } else if ((orientation == Orientation.landscape) && ((width == 896) && (height == 414))) {
        // debugPrint('in else landscape: iPhones: 430 w x 932 h');
        elevatedButtonHeight = height / 6.6 * scaleFactor;
        return elevatedButtonHeight;
      }
      // iPhones: 428 w x 926 h
      // iPhone 14 Plus
      // iPhone 13 Pro Max
      // iPhone 12 Pro Max
      if ((orientation == Orientation.portrait) && ((width == 428) && (height == 926))) {
        // debugPrint('in else portrait: iPhones: 428 w x 926 h');
        elevatedButtonHeight = height / 8.3 * scaleFactor;
        return elevatedButtonHeight;
      } else if ((orientation == Orientation.landscape) && ((width == 926) && (height == 428))) {
        // debugPrint('in else landscape: iPhones: 428 w x 926 h');
        elevatedButtonHeight = height / 6.6 * scaleFactor;
        return elevatedButtonHeight;
      }
      // iPhones: 430 w x 932 h
      // iPhone 15 Pro Max
      // iPhone 15 Plus
      // iPhone 14 Pro Max
      if ((orientation == Orientation.portrait) && ((width == 430) && (height == 932))) {
        // debugPrint('in else portrait: iPhones: 430 w x 932 h');
        elevatedButtonHeight = height / 8.3 * scaleFactor;
        return elevatedButtonHeight;
      } else if ((orientation == Orientation.landscape) && ((width == 932) && (height == 430))) {
        // debugPrint('in else landscape: iPhones: 430 w x 932 h');
        elevatedButtonHeight = height / 6.6 * scaleFactor;
        return elevatedButtonHeight;
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
      if ((orientation == Orientation.portrait) && ((width == 768) && (height == 1024))) {
        elevatedButtonHeight = height / 15.0 * scaleFactor;
        return elevatedButtonHeight;
      } else if ((orientation == Orientation.landscape) && ((width == 1024) && (height == 768))) {
        // debugPrint('in else landscape: iPads: 768 w x 1024  h');
        elevatedButtonHeight = height / 6.6 * scaleFactor;
        return elevatedButtonHeight;
      }
      // iPads: 810 w x 1080  h
      // iPad 9th gen
      // iPad 8th gen
      // iPad 7th gen
      if ((orientation == Orientation.portrait) && ((width == 810) && (height == 1080))) {
        elevatedButtonHeight = height / 15.0 * scaleFactor;
        return elevatedButtonHeight;
      } else if ((orientation == Orientation.landscape) && ((width == 1080) && (height == 810))) {
        // debugPrint('in else landscape: iPads: 810 w x 1080  h');
        elevatedButtonHeight = height / 6.6 * scaleFactor;
        return elevatedButtonHeight;
      }
      // iPads: 834 w x 1112  h
      // iPad Air (3rd gen)
      // iPad Pro (2nd gen 10.5")
      if ((orientation == Orientation.portrait) && ((width == 834) && (height == 1112))) {
        elevatedButtonHeight = height / 16.0 * scaleFactor;
        return elevatedButtonHeight;
      } else if ((orientation == Orientation.landscape) && ((width == 1112) && (height == 834))) {
        // debugPrint('in else landscape: iPads: 834 w x 1112  h');
        elevatedButtonHeight = height / 6.6 * scaleFactor;
        return elevatedButtonHeight;
      }
      // iPads: 744.0 w x 1113.0  h
      // iPad Mini (6th gen)
      if ((orientation == Orientation.portrait) && ((width == 744.0) && (height == 1133.0))) {
        // debugPrint('in else landscape button: iPad Mini (6th gen): 744.0 w x 1113.0  h');
        elevatedButtonHeight = height / 16.0 * scaleFactor;
        return elevatedButtonHeight;
      } else if ((orientation == Orientation.landscape) &&
          ((width == 1133.0) && (height == 744.0))) {
        // debugPrint('in else landscape button: iPad Mini (6th gen): 744.0 w x 1113.0  h');
        elevatedButtonHeight = height / 6.6 * scaleFactor;
        return elevatedButtonHeight;
      }
      // iPads: 820 w x 1180  h
      // iPad 10th gen
      // iPad Air (5th gen)
      // iPad Air (4th gen)
      if ((orientation == Orientation.portrait) && ((width == 820) && (height == 1180))) {
        elevatedButtonHeight = height / 16.0 * scaleFactor;
        return elevatedButtonHeight;
      } else if ((orientation == Orientation.landscape) && ((width == 1180) && (height == 820))) {
        // debugPrint('in else landscape: iPads: 820 w x 1180  h');
        elevatedButtonHeight = height / 6.6 * scaleFactor;
        return elevatedButtonHeight;
      }
      // iPads: 834 w x 1194  h
      // iPad Pro (6th gen 11")
      // iPad Pro (5th gen 11")
      // iPad Pro (4th gen 11")
      // iPad Pro (3rd gen 11")
      if ((orientation == Orientation.portrait) && ((width == 834) && (height == 1194))) {
        elevatedButtonHeight = height / 16.0 * scaleFactor;
        return elevatedButtonHeight;
      } else if ((orientation == Orientation.landscape) && ((width == 1194) && (height == 834))) {
        // debugPrint('in else landscape: iPads: 834 w x 1194  h');
        elevatedButtonHeight = height / 6.6 * scaleFactor;
        return elevatedButtonHeight;
      }
      // iPads: 1024 w x 1366  h
      // iPad Pro (6th gen 12.9")
      // iPad Pro (5th gen 12.9")
      // iPad Pro (4th gen 12.9")
      // iPad Pro (3rd gen 12.9")
      // iPad Pro (2nd gen 12.9")
      //  iPad Pro (1st gen 12.9")
      if ((orientation == Orientation.portrait) && ((width == 1024) && (height == 1366))) {
        // debugPrint('in else button portrait: iPads: 1024 w x 1366  h');
        elevatedButtonHeight = height / 16.0 * scaleFactor;
        return elevatedButtonHeight;
      } else if ((orientation == Orientation.landscape) && ((width == 1366) && (height == 1024))) {
        // debugPrint('in else button landscape: iPads: 1024 w x 1366  h');
        elevatedButtonHeight = height / 6.6 * scaleFactor;
        return elevatedButtonHeight;
      }
    } //if platform

    return elevatedButtonHeight;
  }

  double selectElevatedButtonWidth(double scaleFactor) {
    if (Platform.isIOS) {
      if (orientation == Orientation.portrait) {
        elevatedButtonWidth = width * 1 * scaleFactor;
        return elevatedButtonWidth;
      } else if (orientation == Orientation.landscape) {
        elevatedButtonWidth = width * 0.60 * scaleFactor;
        return elevatedButtonWidth;
      }
    }

    return elevatedButtonWidth;
  }
}
