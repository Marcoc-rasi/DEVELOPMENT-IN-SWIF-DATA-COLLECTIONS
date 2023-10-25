//
//  ViewController.swift
//  AppEventCount-Marcocrasi
//
//  Created by MacBook 28 on 31/05/23.
//

import UIKit

class ViewController: UIViewController {

    //appDelegate events
    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    @IBOutlet weak var configurationForConectingLabel: UILabel!
    //sceneDelegate events
    @IBOutlet weak var willConectToLabel: UILabel!
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    @IBOutlet weak var willResignActiveLabel: UILabel!
    @IBOutlet weak var willEnterForegroundLabel: UILabel!
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!
    //SceneDelegate count variables
    var willConectToCount = 0
    var didBecomeActiveCount = 0
    var willresignActiveCount = 0
    var willEnterForeGroundCount = 0
    var didEnterBackGroundCount = 0
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateView() {
        //AppDelagete labels
        didFinishLaunchingLabel.text = "The App has launched \(appDelegate.launchCount) time(s)"
        
        configurationForConectingLabel.text = "The App chance configutations to conect \(appDelegate.configurationForConnectingCount)"
        
        //Scene Delegate events
        willConectToLabel.text = "The Scene will conect to  \(willConectToCount) time(s)"
        didBecomeActiveLabel.text = "The Scene did become active  \(didBecomeActiveCount) time(s)"
        willResignActiveLabel.text = "The Scene will resign active \(willresignActiveCount) time(s)"
        willEnterForegroundLabel.text = "The Scene will enter foreground \(willEnterForeGroundCount) time(s)"
        didEnterBackgroundLabel.text = "The Scene did enter background \(didEnterBackGroundCount) time(s)"
    }

}

