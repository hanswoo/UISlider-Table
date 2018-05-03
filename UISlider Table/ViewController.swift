//
//  ViewController.swift
//  UISlider Table
//
//  Created by D7702_10 on 2018. 5. 3..
//  Copyright © 2018년 jik. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,
UITableViewDelegate{

    @IBOutlet weak var msl: UISlider!
    @IBOutlet weak var mtv: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mtv.delegate = self
        mtv.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "RE"
        let cell = mtv.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        let tableValue = String(Int(msl.value))
        cell.textLabel?.text = tableValue
        return cell
}

    @IBAction func slm(_ sender: Any) {
        print("slider value = \(Int(msl.value * 100))")
        mtv.reloadData();
    }
    

}

