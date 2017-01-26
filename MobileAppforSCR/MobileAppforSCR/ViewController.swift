//
//  ViewController.swift
//  SCR
//
//  Created by Chi Kei on 1/25/17.
//  Copyright © 2017 HeritageChineseCenter. All rights reserved.
//

import UIKit



class ViewController: UIViewController, IFlySpeechEvaluatorDelegate {
    
    
    var evaluator = IFlySpeechEvaluator.sharedInstance()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        evaluator?.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

//    - (void)onVolumeChanged:(int)volume buffer:(NSData *)buffer{} //
//    - (void)onBeginOfSpeech{}
//    //
//    - (void)onEndOfSpeech{}
//    //
//    - (void)onCancel{}
//    //
//    - (void)onError:(IFlySpeechError *)errorCode{}
//    //
//    - (void)onResults:(NSData *)results isLast:(BOOL)isLast{}
    
    func onBeginOfSpeech() {
        
    }
    
    func onEndOfSpeech() {
        
    }
    
    func onCancel() {
        
    }
    
    func onError(_ errorCode: IFlySpeechError!) {
        
    }
    func onResults(_ results: Data!, isLast: Bool) {
        
    }
    
    func onVolumeChanged(_ volume: Int32, buffer: Data!) {
        
    }
    
    

}

