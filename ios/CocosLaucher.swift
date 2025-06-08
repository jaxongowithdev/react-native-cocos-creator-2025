import Foundation
import React

@objc(CocosLauncher)
class CocosLauncher: NSObject {
  @objc
  func openCocos() {
    print("🟢 [CocosLauncher] Đã chạy vào hàm openCocos() 1")
    DispatchQueue.main.async {
      guard let rootVC = UIApplication.shared.currentWindow?.rootViewController else { return }
      let cocosVC = ViewController() // Đảm bảo ViewController là class bạn import từ Cocos Creator
      cocosVC.modalPresentationStyle = .fullScreen
      rootVC.present(cocosVC, animated: true, completion: nil)
    }
  }
}
