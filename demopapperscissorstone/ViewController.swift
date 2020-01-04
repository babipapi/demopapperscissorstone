//
//  ViewController.swift
//  demopapperscissorstone
//
//  Created by Daniel on 2020/1/4.
//  Copyright © 2020 Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var upImageView: UIImageView!
    @IBOutlet weak var downImageView: UIImageView!
    
    @IBOutlet weak var upLabel: UILabel!
    
    let names = ["papper","scissor","stone"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        upLabel.text = "開始玩吧，你先選一個～"
    }
    
    @IBAction func scissorButton(_ sender: UIButton) {
        downImageView.image = UIImage(named: "scissor")
        upImageView.image = UIImage(named: "")
        upLabel.text = ""
        aiplay()
        whowin()
    }
    
    @IBAction func stoneButton(_ sender: UIButton) {
        downImageView.image = UIImage(named: "stone")
        upImageView.image = UIImage(named: "")
        upLabel.text = ""
        aiplay()
        whowin()
    }
    
    @IBAction func papperButton(_ sender: UIButton) {
        downImageView.image = UIImage(named: "papper")
        upImageView.image = UIImage(named: "")
        upLabel.text = ""
        aiplay()
        whowin()
    }
    
    func aiplay(){
           let randomname = names.randomElement()!
            upImageView.image = UIImage(named: "\(randomname)")
       }

    func whowin(){
        if upImageView.image == UIImage(named: "scissor"),downImageView.image == UIImage(named: "scissor"){
            upLabel.text = "平手"
        }else if upImageView.image == UIImage(named: "papper"),downImageView.image == UIImage(named: "papper"){
        upLabel.text = "平手"
        }else if upImageView.image == UIImage(named: "stone"),downImageView.image == UIImage(named: "stone"){
        upLabel.text = "平手"
        }else if upImageView.image == UIImage(named: "stone"),downImageView.image == UIImage(named: "papper"){
        upLabel.text = "你贏了"
        }else if upImageView.image == UIImage(named: "stone"),downImageView.image == UIImage(named: "scissor"){
        upLabel.text = "電腦贏了"
        }else if upImageView.image == UIImage(named: "papper"),downImageView.image == UIImage(named: "scissor"){
        upLabel.text = "你贏了"
        }else if upImageView.image == UIImage(named: "papper"),downImageView.image == UIImage(named: "stone"){
        upLabel.text = "電腦贏了"
        }else if upImageView.image == UIImage(named: "scissor"),downImageView.image == UIImage(named: "stone"){
        upLabel.text = "你贏了"
        }else if upImageView.image == UIImage(named: "scissor"),downImageView.image == UIImage(named: "papper"){
        upLabel.text = "電腦贏了"
        }
    }
}

