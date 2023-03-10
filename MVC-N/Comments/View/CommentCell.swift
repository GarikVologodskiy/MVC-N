//
//  CommentCell.swift
//  MVC-N
//
//  Created by Igor Vologodskiy on 10.03.2023.
//

import UIKit

class CommentCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    func configure (witch comment: Comment) {
        self.label.text = comment.name
        self.textView.text = comment.body
    }
}
