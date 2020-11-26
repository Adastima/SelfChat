//
//  FirstViewController.swift
//  SelfChat
//
//  Created by NDHU_CSIE on 2020/11/19.
//  Copyright © 2020 NDHU_CSIE. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    @IBOutlet var sendMessage: UITextField!
    @IBOutlet var receiveMessage: UILabel!
    

    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "change" {
            let des = segue.destination as! SecondViewController
            des.passMessage = sendMessage.text!
        }
    }
    
    
    @IBAction func backto(segue: UIStoryboardSegue) {
       let src = segue.source as! SecondViewController
        receiveMessage.text = src.sendMessage.text
        dismiss(animated: true, completion: nil)
        
    }
//last
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
