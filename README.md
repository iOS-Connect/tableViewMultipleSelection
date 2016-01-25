# tableViewMultipleSelection
Shows how to do multiple selection in a table view with built in checkmarks. 

Just set your table view to `editing = true`
and configure your `editingStyle` to be the magical undocumented style 3.

```swift
func tableView(tableView: UITableView,
		editingStyleForRowAtIndexPath indexPath: NSIndexPath)
		-> UITableViewCellEditingStyle {

			return UITableViewCellEditingStyle.init(rawValue: 3)!
	}
```
![screenshot](screenshot.png)
