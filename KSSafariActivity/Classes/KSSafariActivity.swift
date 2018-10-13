//
//  KSSafariActivity.swift
//  KSSafariActivity
//
//  Created by kohei saito on 2018/10/13.
//

import UIKit

class KSSafariActivity: UIActivity {
    
    var title: String!
    var url: URL!
    
    init(activityTitle: String, url: URL) {
        self.title = activityTitle
        self.url = url
        super.init()
        
    }
    
    override var activityTitle: String? {
        return title
    }
    
    override var activityImage: UIImage? {
        return UIImage(named: "ks_safari_activity_icon")
    }
    
    
    override func canPerform(withActivityItems activityItems: [Any]) -> Bool {
        return UIApplication.shared.canOpenURL(url)
    }
    
    override func prepare(withActivityItems activityItems: [Any]) {
    }
    
    override func perform() {
        guard let url = self.url else { return }
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
        self.activityDidFinish(true)
    }
    
}
