//
//  ViewController.swift
//  KSSafariActivity
//
//  Created by kohei1218 on 10/13/2018.
//  Copyright (c) 2018 kohei1218. All rights reserved.
//

import UIKit
import KSSafariActivity

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showKSSafariActivity(_ sender: Any) {
        let activity = UIActivityViewController(activityItems: [""], applicationActivities: [KSSafariActivity(title: "open safari", url: URL(string: "https://kohemon.com")!)])
        present(activity, animated: true, completion: nil)
    }
}

