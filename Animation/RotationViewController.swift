//
//  RotationViewController.swift
//  Animation
//
//  Created by csdc-iMac on 2018/7/19.
//  Copyright © 2018年 K. All rights reserved.
//

import UIKit

class RotationViewController: UIViewController {

    @IBOutlet weak var rotation: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
  
        // Do any additional setup after loading the view.
    }
    
    func spin()  { //自定义的方法
             UIView.animate(withDuration: 0.5, delay: 0, options:.curveLinear, animations: { //curveLinear使得动画的过渡更圆滑
                self.rotation.transform=self.rotation.transform.rotated(by: CGFloat(Double.pi)) //旋转180度

             }) { (finished) in
//                self.spin() //这个图片可以一直不停的旋转
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)          
        self.spin()  //调用自定义的方法
   
        
 
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
