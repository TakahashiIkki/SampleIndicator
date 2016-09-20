//
//  ViewController.swift
//  SampleIndicator
//
//  Created by 一騎高橋 on 2016/09/21.
//  Copyright © 2016年 IkkiTakahashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var myActivityIndicator: UIActivityIndicatorView!
    @IBOutlet private var myButton: UIButton!
    
    // NavigationBar の 右位置に ActivityIndicator を作成
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myActivityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .gray)
        myActivityIndicator.hidesWhenStopped = true
        self.onClickMyButton(self)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: myActivityIndicator)
    }

    // ボタンクリック時の挙動
    @IBAction func onClickMyButton(_ sender: AnyObject) {
        if myActivityIndicator.isAnimating {
            myActivityIndicator.stopAnimating()
            myButton.setTitle("Start", for: .normal)
        }
        else {
            myActivityIndicator.startAnimating()
            myButton.setTitle("Stop", for: .normal)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

