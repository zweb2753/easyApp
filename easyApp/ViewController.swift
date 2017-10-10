//
//  ViewController.swift
//  easyApp0
//
//  Created by Weber, Zane on 10/10/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var firstButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    private func creatRandomColor() -> UIColor
    {
       let newColor :UIColor
       let redAmount = CGFloat (Double (arc4random_uniform(256))/255.00)
       let greenAmount = CGFloat (Double (arc4random_uniform(256))/255.00)
       let blueAmount = CGFloat (Double (arc4random_uniform(256))/255.00)
       newColor = UIColor(red: redAmount, green: greenAmount, blue: blueAmount, alpha: CGFloat(1.0))
    
    
       return newColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

