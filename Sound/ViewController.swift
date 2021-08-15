//
//  ViewController.swift
//  Sound
//
//  Created by 河村大介 on 2021/08/15.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    // タップ時にボタンの画像を変更したいので、@IBOutletで関連付け
    @IBOutlet weak var drumButton: UIButton!
    @IBOutlet weak var pianoButton: UIButton!
    @IBOutlet weak var guitarButton: UIButton!
    
    // AV(AudioVisual=視聴覚)AudioPlayerのインスタンスの生成
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    let pianoSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    let guitarSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func touchDownDrumButton() {
        drumButton.setImage(UIImage(named: "drumPlayingImage")!, for: .normal)
        // 音楽ファイルの再生時間を0秒に巻き戻す（currentTime=AVAudioPlayerクラスのメンバプロパティ）
        drumSoundPlayer.currentTime = 0
        // 音楽の再生（play() = AVAudioPlayerクラスのメンバメソッド）
        drumSoundPlayer.play()
    }
    
    @IBAction func touchDownPianoButton() {
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        pianoSoundPlayer.currentTime = 0
        pianoSoundPlayer.play()
    }
    
    @IBAction func touchDownGuitarButton() {
        guitarButton.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
        guitarSoundPlayer.currentTime = 0
        guitarSoundPlayer.play()
    }
    
    @IBAction func touchUpDrumButton() {
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }
    
    @IBAction func touchUpPianoButton() {
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
    }
    
    @IBAction func touchUpGuitarButton() {
        guitarButton.setImage(UIImage(named: "guitarImage"), for: .normal)
    }
}


