//
//  PositionViewController.swift
//  Animation
//
//  Created by csdc-iMac on 2018/7/19.
//  Copyright © 2018年 K. All rights reserved.
//

import UIKit

class PositionViewController: UIViewController {

    
    @IBOutlet weak var redSquare: UIImageView!
    
    @IBOutlet weak var greenSquare: UIImageView!
    
    @IBOutlet weak var blueSquare: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        //视图完全呈现时，启动动画
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1, animations: {  //这个1表示1秒完成动画
            self.redSquare.center.x=self.view.bounds.width-self.redSquare.center.x //横坐标的位置就是center.x,这句话就是完成从左边移到右边的对称位置
        })
        
        UIView.animate(withDuration: 1, delay: 0.5, options:[], animations: {//这个1表示1秒完成动画，delay：0.5表示延迟0.5秒启动动画
             self.greenSquare.center.y=self.view.bounds.height-self.greenSquare.center.y//纵坐标的位置就是center.y,这句话就是完成从上边移到下边的对称位置
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 1, options:[], animations:  {
             self.blueSquare.center.x=self.view.bounds.width-self.blueSquare.center.x
             self.blueSquare.center.y=self.view.bounds.height-self.blueSquare.center.y
            //移到界面的斜对称位置
        }, completion:nil)
    
    
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
