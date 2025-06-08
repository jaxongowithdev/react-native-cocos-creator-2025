import UIKit

extension UIApplication {
    var currentWindow: UIWindow? {
        if #available(iOS 13.0, *) {
            return self.connectedScenes
                .compactMap { $0 as? UIWindowScene }
                .flatMap { $0.windows }
                .first { $0.isKeyWindow }
        } else {
            return self.keyWindow
        }
    }
}
