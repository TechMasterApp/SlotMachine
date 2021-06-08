//
//  PlaySound.swift
//  SlotMachine
//
//  Created by Gaurav Bhasin on 2/18/21.
//

import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("ERROR: Cloud not find and play the sound file!")
        }
    }
}

