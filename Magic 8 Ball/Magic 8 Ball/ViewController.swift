//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Nadia Koroleva on 12/14/17.
//  Copyright © 2017 Nadia Koroleva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber : Int = 0

    @IBOutlet weak var ballImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        
        newBallImage()
        
    }
    
    func newBallImage() {
    
        randomBallNumber = Int(arc4random_uniform(5))
    
        ballImageView.image = UIImage(named: ballArray[randomBallNumber])
    
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
    
        newBallImage()
        
    }
}

