//
//  ScaleViewController.swift
//  Animation
//
//  Created by csdc-iMac on 2018/7/19.
//  Copyright © 2018年 K. All rights reserved.
//

import UIKit

class ScaleViewController: UIViewController {

    @IBOutlet weak var redSquare: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super .viewDidAppear(animated)
        
        UIView.animate(withDuration: 1, animations: {
            self.redSquare.transform=CGAffineTransform(scaleX: 0.3,y: 0.3) //缩小成0.3倍
            
        })
        
        
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
