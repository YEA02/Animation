
//
//  EaseViewController.swift
//  Animation
//
//  Created by csdc-iMac on 2018/7/19.
//  Copyright © 2018年 K. All rights reserved.
//

import UIKit

class EaseViewController: UIViewController {

    @IBOutlet weak var redSquare: UIImageView!
    @IBOutlet weak var greenSquare: UIImageView!
    @IBOutlet weak var blueSquare: UIImageView!
    @IBOutlet weak var lightblueSquare: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 1, animations: {
            self.redSquare.center.x=self.view.bounds.size.width-self.redSquare.center.x
        })
        
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.greenSquare.center.x=self.view.bounds.size.width-self.greenSquare.center.x
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseOut, animations: {
            self.blueSquare.center.x=self.view.bounds.size.width-self.blueSquare.center.x
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseInOut, animations: {
            self.lightblueSquare.center.x=self.view.bounds.size.width-self.lightblueSquare.center.x
        }, completion: nil)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
