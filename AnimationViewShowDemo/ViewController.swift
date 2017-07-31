//
//  ViewController.swift
//  AnimationViewShowDemo
//
//  Created by sseen on 2017/7/31.
//  Copyright © 2017年 sseen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ckShow(_ sender: Any) {
        let viewController = SecViewController()
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = kCATransitionFade
        transition.subtype = kCATransitionFromBottom
        view.window!.layer.add(transition, forKey: kCATransition)
        present(viewController, animated: false, completion: nil)
    }

}

