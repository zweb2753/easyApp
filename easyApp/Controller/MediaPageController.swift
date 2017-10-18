//
//  MediaPageController.swift
//  easyApp
//
//  Created by Weber, Zane on 10/18/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import AVFoundation

class MediaPageController: UIViewController
{

    private var soundPlayer : AVAudioPlayer?
    private var imageCounter : Int = 0
    private lazy var color : ColorTools = ColorTools()
    
    @IBOutlet weak var imageFrame: UIImageView!
    @IBOutlet weak var ImageButton: UIButton!
    @IBOutlet weak var soundButton: UIButton!
    @IBOutlet weak var oundSlider: UISlider!
    
    @IBOutlet weak var Soundbutton: UISlider!
    @IBAction func changePicure() -> Void
    {
        switchImage()
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    private func switchImage() -> Void
    {
        if (imageCounter > 2)
        {
            imageCounter = 0
        }
        if (imageCounter == 0)
        {
            imageFrame.image = UIImage(named: "Proj Pic Tree")
        }
        else if (imageCounter == 1)
        {
            imageFrame.image = UIImage(named: "Proj Pic Bed")
        }
        else
        {
            imageFrame.image = UIImage(named: "Proj Pic Food")
        }
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
