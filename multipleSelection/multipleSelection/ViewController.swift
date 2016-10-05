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

	@IBAction func toggleEditing(_ sender: AnyObject) {
		let isEditing = tableView.isEditing
		tableView.setEditing(!isEditing, animated: true)
	}

	// MARK: - Table View Data Source Methods
	override func tableView(_ tableView: UITableView,
		numberOfRowsInSection section: Int) -> Int {
			return data.count
	}

	override func tableView(_ tableView: UITableView,
		cellForRowAt indexPath: IndexPath) -> UITableViewCell {

			let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",
				for: indexPath)
			cell.textLabel?.text = data[(indexPath as NSIndexPath).row]
			return cell
	}
}
