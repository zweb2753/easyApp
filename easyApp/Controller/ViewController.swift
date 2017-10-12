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
    lazy var colorTool : ColorTools = ColorTools()
    
    @IBOutlet weak var firstButton: UIButton!
    
    @IBOutlet weak var coolSwitch: UISwitch!
    
    func clickedSwitch(_ sender: UIButton)
    {
        
    }
    @IBAction func switchSetColor(_ sender: Any) {
    }
    
    @IBAction func clickedButton(_ sender: UIButton)
    {
        view.backgroundColor = colorTool.createColor()
        firstButton.setTitleColor(colorTool.createColor(), for: .normal)
        firstButton.backgroundColor = colorTool.createColor()
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

