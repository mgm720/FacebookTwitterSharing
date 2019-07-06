//
//  ViewController.swift
//  FacebookTwitterSharing
//
//  Created by Michael Miles on 7/6/19.
//  Copyright © 2019 Michael Miles. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {
    
    @IBOutlet weak var maverickImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func twitterButtonPressed(_ sender: Any) {
        if let vc = SLComposeViewController(forServiceType: SLServiceTypeTwitter) {
            vc.setInitialText("Check out my dawg http://www.google.com/")
            vc.add(maverickImageView.image)
            present(vc, animated: true)
        }
    }
    
    @IBAction func facebookButtonPressed(_ sender: Any) {
        if let vc = SLComposeViewController(forServiceType: SLServiceTypeFacebook) {
            vc.setInitialText("Maverick is Facebook friendly")
            vc.add(maverickImageView.image)
            present(vc, animated: true)
        }
    }
    
}

