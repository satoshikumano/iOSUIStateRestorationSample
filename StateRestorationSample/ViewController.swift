//
//  ViewController.swift
//  StateRestorationSample
//
//  Created by 熊野 聡 on 2015/08/04.
//  Copyright (c) 2015年 Kii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myText: UITextField!
    override func viewDidLoad() {
        println("viewDidLoad")
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func encodeRestorableStateWithCoder(coder: NSCoder) {
        println("encodeRestorableStateWithCoder")
        super.encodeRestorableStateWithCoder(coder)
        coder.encodeObject(myText.text, forKey: "mytext")
    }

    override func decodeRestorableStateWithCoder(coder: NSCoder) {
        println("decodeRestorableStateWithCoder")
        super.decodeRestorableStateWithCoder(coder)
        myText.text = coder.decodeObjectForKey("mytext") as! String
    }

}

