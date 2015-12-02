//
//  ViewController.swift
//  admobInterstitial
//
//  Created by mstcode on 02/12/15.
//  Copyright © 2015 mstcode. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {

    var interstitial:GADInterstitial!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-3940256099942544/4411468910")
        let req = GADRequest()
        interstitial.loadRequest(req)
    }

    @IBAction func showInterstitial(sender: AnyObject) {
        if (interstitial.isReady) {
            interstitial.presentFromRootViewController(self)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

