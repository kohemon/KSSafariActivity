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
        let path = Bundle.main.path(forResource: "KSSafariActivity", ofType: "bundle")
        guard let path_ = path else { return nil }
        let bundle = Bundle(path: path_)
        if let imagePath = bundle?.path(forResource: "ks_safari_activity_icon", ofType: "png") {
            return UIImage(contentsOfFile: imagePath)
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
