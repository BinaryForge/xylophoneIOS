//
//  ViewController.swift
//  Xylophone
//
//  
//AVFoundation to use Sound
import UIKit
import AVFoundation


class ViewController: UIViewController, AVAudioPlayerDelegate{
    var audioPlayer: AVAudioPlayer!
    let soundArray = ["note1","note2","note3","note4","note5","note6","note7",]
    var selectedFileName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //Plays Sound Compared to a specific button
    @IBAction func notePressed(_ sender: UIButton) {
        selectedFileName = soundArray[sender.tag - 1]
        playSound()
    }
    
    //Plays a sound
    func playSound(){
        let soundUrl = Bundle.main.url(forResource: selectedFileName, withExtension: "wav")
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
        }
        catch{
            print(error)
        }
        audioPlayer.play()
        
    }
    
}

