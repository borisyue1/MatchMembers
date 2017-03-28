//
//  StatisticsViewController.swift
//  Mini Project 1 (match members)
//
//  Created by Boris Yue on 2/10/17.
//  Copyright © 2017 Boris Yue. All rights reserved.
//

import UIKit

class StatisticsViewController: UIViewController {

    @IBOutlet weak var streak: UILabel!
    var longestStreak = ""
    var lastThree: [String] = []
    
    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var labels = [firstLabel, secondLabel, thirdLabel]
        streak.text = longestStreak
        for (index, item) in lastThree.reversed().enumerated() {
            labels[index]?.text = "\(index + 1). " + item
        }
    }

}
