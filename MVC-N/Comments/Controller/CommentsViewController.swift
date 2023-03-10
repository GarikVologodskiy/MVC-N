//
//  ViewController.swift
//  MVC-N
//
//  Created by Igor Vologodskiy on 09.03.2023.
//

import UIKit

class CommentsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension CommentsViewController: UITableViewDelegate {}

extension CommentsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) //as! CommentCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        0
    }

}

