//
//  ViewController.swift
//  multipleSelection
//
//  Created by John Regner on 1/25/16.
//  Copyright © 2016 John Regner. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

//	@IBOutlet weak var tableView: UITableView!

	var data  = (1...100).map { String($0) }

	@IBAction func toggleEditing(sender: AnyObject) {
		let isEditing = tableView.editing
		tableView.setEditing(!isEditing, animated: true)
	}

	// MARK: - Table View Data Source Methods
	override func tableView(tableView: UITableView,
		numberOfRowsInSection section: Int) -> Int {
			return data.count
	}

	override func tableView(tableView: UITableView,
		cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

			let cell = tableView.dequeueReusableCellWithIdentifier("Cell",
				forIndexPath: indexPath)
			cell.textLabel?.text = data[indexPath.row]
			return cell
	}
}
