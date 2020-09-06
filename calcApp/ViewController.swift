//
//  ViewController.swift
//  calcApp
//
//  Created by Takahashi Tomoko on 2020/09/05.
//  Copyright © 2020 takatomo.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.minusVutton.layer.cornerRadius = 25
    }
    
    
    //senderはUIボタンを意味する UIボタンに含まれる機能を持ってくる
    @IBAction func pushButton(_ sender: UIButton) {
    //ifはyes,no switchは詳しくわかっている時
           if let leftNum = Int(leftField!.text!),let rightNum = Int(rightField!.text!) {
            
            //sender
            switch sender.titleLabel?.text {
            case "+":
                AnswerLabel.text = String(leftNum + rightNum)
            case "-":
                AnswerLabel.text = String(leftNum - rightNum)
            case "×":
            AnswerLabel.text = String(leftNum * rightNum)
            case "÷":
                AnswerLabel.text = String(leftNum / rightNum)
            default:
                leftField.text = ""
                rightField.text = ""
                AnswerLabal.text = ""
            }
        }
            

    
    
    

    @IBOutlet var AnswerLabel: UILabel!
    
    
    @IBOutlet var leftField: UITextField!
    
    
    @IBOutlet var rightField: UITextField!
    
    //角を丸くするためにこの一文(下行)追加
    @IBOutlet var minusVutton: UIButton!
    
    //マイナスボタンが押された時にフィールドの中身のテキストをprint
    //printに！を付けると、nilを許容している。エラー回避
    /*@IBAction func minusButton(_ sender: Any) {
        //print(leftField.text!,rightField.text!)
        
        //左右のテキストフィールドに文字を入れたくないのでInt型へアンラップ
        //もしleftNumをleftもrightもイント型に変換できたら、〜してください
        //ユーザーの値は変わらないのでlet
        //ユーザーから受け取った値は変数として格納する必要ある
        if let leftNum = Int(leftField.text!),let rightNum = Int(rightField.text!) {
            
            print(leftNum,rightNum)
            
            //計算するために受け取った値を出力する
            
            let result = leftNum - rightNum
            print(result)
            
            AnswerLabel.text = String("0")
        //整数以外の入力があった場合
        } else {
            print("エラー")
        }
    }
    
    
    @IBAction func plusButton(_ sender: Any) {
        if let leftNum = Int(leftField.text!),let rightNum = Int(rightField.text!) {
            print(leftNum,rightNum)
            
            let result = leftNum + rightNum
            print(result)
            AnswerLabel.text = String("0")
            
        } else {
            print("エラー")
        }
        
    }
    
    
    @IBAction func xButton(_ sender: Any) {
        if let leftNum = Int(leftField.text!),let rightNum = Int(rightField.text!)  {
            print(leftNum,rightNum)
            
            let result = leftNum * rightNum
            print(result)
            AnswerLabel.text = String("0")
        }
    }
    
    
    @IBAction func waruButton(_ sender: Any) {
        if let leftNum = Int(leftField.text!),let rightNum = Int(rightField.text!) {
            print(leftNum,rightNum)
            
            let result = leftNum / rightNum
            print(result)
            AnswerLabel.text = String("0")
        }
    }
    
    
    @IBAction func clearButton(_ sender: Any) {
        
    }
    
}
*/
