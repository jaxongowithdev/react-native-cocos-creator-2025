import Foundation
import React
import UIKit

@objc(CocosLauncher)
class CocosLauncher: NSObject {
  @objc
  func openCocos() {
    DispatchQueue.main.async {
      guard let rootVC = UIApplication.shared.currentWindow?.rootViewController else { return }
      let cocosVC = ViewController() // Đảm bảo ViewController là class bạn import từ Cocos Creator
      cocosVC.modalPresentationStyle = .fullScreen
      rootVC.present(cocosVC, animated: true, completion: nil)
    }
  }
}
