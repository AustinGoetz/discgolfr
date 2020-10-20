//
//  DateExtension.swift
//  discgolfr
//
//  Created by Austin Goetz on 10/19/20.
//

import Foundation

extension Date {
    func dateAsString() -> String {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        formatter.dateStyle = .short
        
        return formatter.string(from: self)
    }
}
