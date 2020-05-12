//
//  ViewController.swift
//  Sound
//
//  Created by 松島優希 on 2020/05/12.
//  Copyright © 2020 松島優希. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var drumButton: UIButton!
    
    
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touchDownDrumbutton(){
        
        drumButton.setImage(UIImage(named: "drumPlayingImage"),for: .normal)
        
        
        drumSoundPlayer.currentTime = 0
        
        drumSoundPlayer.play()
    }
    
    @IBAction func touchUpDrumbutton(){
        drumButton.setImage(UIImage(named: "drumImage"),for: .normal)
    }
}

