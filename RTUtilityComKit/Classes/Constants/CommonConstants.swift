//import Device
import UIKit

struct RTScreen {
    static let screenW = UIScreen.main.bounds.size.width
    static let screenH = UIScreen.main.bounds.size.height
    static let screenWScaleFactor = screenW / 375.0
    static let screenHScaleFactor = screenH / 667.0
}

struct RTBouns {

//    static let chatBarMin_H = CGFloat(49)
    static let navBar_H = CGFloat(44)
//    static let statusBar_H = CGFloat((Device.size() == Size.screen5_8Inch || Device.size() == Size.screen6_1Inch || Device.size() == Size.screen6_5Inch) ? 44 : 20)
////    static let iphoneXBottomMore_H = CGFloat((Device.size() == Size.screen5_8Inch || Device.size() == Size.screen6_1Inch || Device.size() == Size.screen6_5Inch) ? 34 : 0.01)

    static let tabBar_H = CGFloat(49)
    
    static var iphoneXBottomMore_H_New: CGFloat {
        if #available(iOS 13.0, *) {
            // iOS 13 及以上通过 UIWindowScene 获取
            let scene = UIApplication.shared.connectedScenes.first
            guard let windowScene = scene as? UIWindowScene else { return 0 }
            guard let window = windowScene.windows.first else { return 0 }
            return window.safeAreaInsets.bottom
        } else if #available(iOS 11.0, *) {
            // iOS 11 - 12 通过 UIApplication 获取
            if let window = UIApplication.shared.windows.first {
                return window.safeAreaInsets.bottom
            }
        }
        // iOS 11 以下系统没有 safeAreaInsets
        return 0;
    }
    
    static var statusBarHeight: CGFloat {
        if #available(iOS 13.0, *) {
            // iOS 13 及以上通过 UIWindowScene 获取
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                return windowScene.statusBarManager?.statusBarFrame.height ?? 0
            }
        } else {
            // iOS 12 及以下通过 UIApplication 的 statusBarFrame 获取
            return UIApplication.shared.statusBarFrame.height
        }
        return 0
    }
    
    static var navigationBarHeight: CGFloat {
        return UINavigationController().navigationBar.frame.height
    }
}

struct RTDevice {
//    static let isSimulator = Device.isSimulator()
//    static let isiPhoneX = (Device.size() == Size.screen5_8Inch || Device.size() == Size.screen6_1Inch || Device.size() == Size.screen6_5Inch) ? true : false
//    
//    
    static var isiPhoneXNew: Bool{
        var height = 0.0
        if #available(iOS 13.0, *) {
            let topHeight = UIApplication.shared.windows.first?.safeAreaInsets.top
            height = topHeight ?? 20
        }else{
            height = UIApplication.shared.statusBarFrame.size.height
        }
        if(height > 20) {
            return true
        } else {
            return false
        }
    }
}

