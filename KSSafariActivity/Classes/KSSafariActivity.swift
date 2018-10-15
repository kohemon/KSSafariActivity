//
//  KSSafariActivity.swift
//  KSSafariActivity
//
//  Created by kohei saito on 2018/10/13.
//

import UIKit

public class KSSafariActivity: UIActivity {
    
    var title: String!
    var url: URL!
    
    public init(title: String, url: URL) {
        self.title = title
        self.url = url
        super.init()
        
    }
    
    override public var activityTitle: String? {
        return title
    }
    
    override public var activityImage: UIImage? {
        let podBundle = Bundle(for: KSSafariActivity.self)
        if let url = podBundle.url(forResource: "KSSafariActivity", withExtension: "bundle") {
            let bundle = Bundle(url: url)
            return UIImage(named: "ks_safari_activity_icon.png", in: bundle, compatibleWith: nil)
        }
        return nil
    }
    
    
    override public func canPerform(withActivityItems activityItems: [Any]) -> Bool {
        return UIApplication.shared.canOpenURL(url)
    }
    
    override public func prepare(withActivityItems activityItems: [Any]) {
    }
    
    override public func perform() {
        guard let url = self.url else { return }
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
        self.activityDidFinish(true)
    }
    
}
