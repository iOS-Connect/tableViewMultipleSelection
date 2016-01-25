//
//  ViewController.swift
//  multipleSelection
//
//  Created by John Regner on 1/24/16.
//  Copyright © 2016 John Regner. All rights reserved.
//

import UIKit

class ViewController: UIViewController,
	UITableViewDelegate, UITableViewDataSource {

	@IBOutlet weak var tableView: UITableView!

	var data  = (1...100).map { String($0) }

	override func viewDidLoad() {
		super.viewDidLoad()
		tableView.setEditing(true, animated: false)
	}

	func tableView(tableView: UITableView,
		numberOfRowsInSection section: Int) -> Int {
		return data.count
	}

	func tableView(tableView: UITableView,
		cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

		let cell = tableView.dequeueReusableCellWithIdentifier("Cell",
			forIndexPath: indexPath)
		cell.textLabel?.text = data[indexPath.row]
		return cell
	}

	func tableView(tableView: UITableView,
		editingStyleForRowAtIndexPath indexPath: NSIndexPath)
		-> UITableViewCellEditingStyle {

		return UITableViewCellEditingStyle.init(rawValue: 3)!
	}
}
