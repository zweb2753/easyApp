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
    @IBOutlet weak var soundSlider: UISlider!
    
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
        if (imageCounter > 4)
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
        else if (imageCounter == 2)
        {
            imageFrame.image = UIImage(named: "Proj Pic Food")
        }
        view.backgroundColor = color.createRandomColor();
        imageCounter += 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func soundPlay()
    {
        playMusicFile()
    }
    
    private func playMusicFile() -> Void
    {
        if let isPlaying = soundPlayer?.isPlaying
        {
            if (isPlaying)
            {
                soundPlayer?.pause()
            }
            else
            {
                soundPlayer?.pause()
            }
        }
        
        private func loadAudioFile() -> Void
        {
            if let soundUL = NSDataAsset(name: "Nero_Promises")
            {
               do
               {
                   try! AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                   try! AVAudioSession.sharedInstance().setActive(true)
                
                try soundPlayer = AVAudioPlayer(data: soundUrl.data, fileTypeHint:
                    AVFileType.mp3.rawValue
                soundSlider.maximumValue = Float ((soundPlayer?.duration)!)
                Timer.scheduldTimer(timeInterval: 0.2, target: self, selector:
                    (#selector(self.updateSlider)), userInfo: nil, repeats: true)
                }
                catch
                {
                    print("Auio File Load Error")
                }
           }
      }
        
        @objc private func updateSlider() -> Void
        {
            soundSlider.value = Float ((soundPlayer?.currentTime)!)
        }
        
        @IBAction func slidingSound(_ sender: UISlide)
        {
            let seekTime = Double (soundSlider.value)
            soundPlayer.currentTime = seekTime
        }
    }
        //this code is less safe
        //if (soundPlayer?.isPlaying)!
        //  {
        //      soundPlayer?.pause()
        // }
        // else
        // {
        //     soundPlayer?.play()
        //  }
        
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
