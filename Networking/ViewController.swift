//
//  ViewController.swift
//  Networking
//
//  Created by Roman Subrichak on 8/11/17.
//  Copyright © 2017 Roman Subrychak. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		let url = URL(string: "https://www.facebook.com")!
		let task = URLSession.shared.dataTask(with: url) { data, response, error in
			guard let data = data, error == nil else { return }
			
			let responseString = String(data: data, encoding: .utf8)
			
			print(responseString ?? "NO")
		}
		
		task.resume()

	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

