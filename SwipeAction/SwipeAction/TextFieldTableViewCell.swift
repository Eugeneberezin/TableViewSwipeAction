//
//  TextFieldTableViewCell.swift
//  SwipeAction
//
//  Created by Eugene Berezin on 7/11/20.
//  Copyright © 2020 Eugene Berezin. All rights reserved.
//

import UIKit

class TextFieldTableViewCell: UITableViewCell {
    
    class TextField: UITextField {
        override func textRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.insetBy(dx: 24, dy: 0)
        }
        
        override func editingRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.insetBy(dx: 24, dy: 0)
        }
        
        override var intrinsicContentSize: CGSize {
            return .init(width: 0, height: 44)
        }
    }
    
    let textField: UITextField = {
        let tf = TextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Edit me"
        return tf
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(textField)
        textField.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    


}
