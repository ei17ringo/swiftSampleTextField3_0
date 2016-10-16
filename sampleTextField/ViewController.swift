//
//  ViewController.swift
//  sampleTextField
//
//  Created by Eriko Ichinohe on 2016/01/27.
//  Copyright © 2016年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var myTextField: UITextField!

    @IBAction func tapReturn(_ sender: UITextField) {
        
        print(myTextField.text)
        
        // TODO:ラベルを用意してtestと言う字が含まれていたら「testです」とラベルに表示、それ以外は入力された字をそのまま表示しましょう
        
        //ヒント
        let str:String! = myTextField.text
        if let r = str.range(of: "test") {
            print("見つかった")
            myLabel.text = "testです"
        } else {
            print("見つからない")
            myLabel.text = myTextField.text
        }
    }
    @IBAction func btnTap(_ sender: UIButton) {
        myTextField.resignFirstResponder()
    }
}

