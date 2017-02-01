//
//  ViewController.swift
//  SCR
//
//  Created by Chi Kei on 1/25/17.
//  Copyright © 2017 HeritageChineseCenter. All rights reserved.
//

import UIKit
import AVFoundation
import AudioToolbox

class ViewController: UIViewController, IFlySpeechRecognizerDelegate{
    
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    
    
    var result = ""
    let reconginizer = IFlySpeechRecognizer.sharedInstance() as IFlySpeechRecognizer
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        reconginizer.delegate = self
        //reconginizer?.setParameter("", forKey: IFlySpeechConstant.params())
        reconginizer.setParameter("json", forKey: IFlySpeechConstant.result_TYPE())
        
        label1.text = "苟利国家生死以，岂因祸福避趋之。"
        
        
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func startSpeaking(_ sender: Any) {
        reconginizer.startListening()
    }
    
    func onBeginOfSpeech() {
        
    }
    
    func onEndOfSpeech() {
        
    }
    
    func onCancel() {
        
    }
    

    
    
    func onError(_ errorCode: IFlySpeechError!) {
        print("识别出错：\(errorCode.errorCode)")
    }
    
    func onResults(_ results: [Any]!, isLast: Bool) {
        let resultString: NSMutableString = ""
        
        if results != nil {
            let dict = results[0] as! NSDictionary
            for (key,_) in dict {
                resultString.append("\(key)")
            }
            let resultFromJson = ISRDataHelper.string(fromJson: resultString as String!)
            if let str = resultFromJson{
                result += str
            }
            
            if isLast {
                label2.text = result
                
            }
        }
    
        
    //        for key in resultDic.keys {
    //            resultStr += key
    //        }
    //
    //       let text = resultStr
    //
    //       print("result")
    //       print(text)
        }
    
    func onVolumeChanged(_ volume: Int32, buffer: Data!) {
        
    }
    
    
    
}

