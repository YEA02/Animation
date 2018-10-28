//
//  SpringViewController.swift
//  Animation
//
//  Created by csdc-iMac on 2018/7/20.
//  Copyright © 2018年 K. All rights reserved.
//

import UIKit

class SpringViewController: UIViewController {
    @IBOutlet weak var redSquare: UIImageView!
    
    @IBOutlet weak var greenSquare: UIImageView!
    @IBOutlet weak var blueSquare: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 1, animations: {
            self.redSquare.center.x=self.view.bounds.size.width-self.redSquare.center.x
        })
        
        UIView.animate(withDuration: 5, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: [], animations: { //usingSpringWithDamping表示阻尼，值越大，阻力越大，停下的越快。initialSpringVelocity表示初始速度，值越大，停下的越慢
             self.greenSquare.center.x=self.view.bounds.size.width-self.greenSquare.center.x
        }, completion: nil)
        
        UIView.animate(withDuration: 5, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.5, options: [], animations: {
            self.blueSquare.center.x=self.view.bounds.size.width-self.blueSquare.center.x
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
