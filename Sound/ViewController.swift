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
    
    @IBOutlet var pianoButton: UIButton!
    
    @IBOutlet var guitarButton: UIButton!
    
    
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    let pianoSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    
     let guitarSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)
    
    

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
    
    @IBAction func touchDownPianobutton(){
        
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"),for: .normal)
        
        
        pianoSoundPlayer.currentTime = 0
        
        pianoSoundPlayer.play()
    }
    
    @IBAction func touchUpPianobutton(){
           pianoButton.setImage(UIImage(named: "pianoImage"),for: .normal)
       }
    
    
       @IBAction func touchDownGuitarbutton(){
           
           guitarButton.setImage(UIImage(named: "guitarPlayingImage"),for: .normal)
           
           
           guitarSoundPlayer.currentTime = 0
           
           guitarSoundPlayer.play()
       }
       
       @IBAction func touchUpGuitarbutton(){
              guitarButton.setImage(UIImage(named: "guitarImage"),for: .normal)
          }
}

