//
//  ViewController.swift
//  UIButtonSample
//
//  Created by satoshi.marumoto on 2020/03/31.
//  Copyright © 2020 satoshi.marumoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton()
        //ボタンのテキスト
        button.setTitle("UIButton", for: .normal)
        //テキストの色
        button.setTitleColor(UIColor.white, for: .normal)
        //タップした状態のテキスト
        button.setTitle("押されたよ", for: .highlighted)
        //タップした後の文字色
        button.setTitleColor(UIColor.red, for: .highlighted)
        //ボタンのサイズ width height
        button.frame = CGRect(x: 0, y: 0, width: 300, height: 50)
        //タグ番号
        button.tag = 1
        //配置場所
        button.layer.position = CGPoint(x: self.view.frame.width/2, y:100)
        //背景色 background-color
        button.backgroundColor = UIColor(red:59/255,green:89/255,blue:152/255,alpha:0.7)
        //角の丸み　border-radius
        button.layer.cornerRadius = 10
        //ボーダー幅 border
        button.layer.borderWidth = 1
        //ボーダーの色 border-color
        button.layer.borderColor = UIColor(red:1.0,green:1.0,blue:1.0,alpha:0.3).cgColor
        //ボタンをタップした時に実行するメソッドを指定
        button.addTarget(self, action: Selector(("tapped")), for:.touchUpInside)
        //viewにボタンを追加する
        view.addSubview(button)
    }
    
    @objc func tapped() {
        print("あ")
    }
}
