//
//  ViewController.swift
//  FunFacts
//
//  Created by Joseph (Joe) Hill on 12/13/16.
//  Copyright © 2016 Joseph (Joe) Hill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var funFactLabel: UILabel!
	@IBOutlet weak var funFactButton: UIButton!
	
	
	let factProvider = FactProvider()
	let colorProvider = BackgroundColorProvider()
	//weak refers to memory management
	//the ! indicates the outlet won't load before the view loads 
	//this is an example of an optional
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		funFactLabel.text = factProvider.randomFact()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	@IBAction func showFact() {
		
		funFactLabel.text = factProvider.randomFact()
		let randomColor = colorProvider.randomColor()
		view.backgroundColor = randomColor
		funFactButton.tintColor = randomColor
	}

}










