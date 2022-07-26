//
//  GitHub+Date.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 19/07/22.
//

import Foundation

extension Date {

    func toString(withFormat format: String = "EEEE ، d MMMM yyyy") -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "fa-IR")
        dateFormatter.timeZone = TimeZone(identifier: "Asia/Tehran")
        dateFormatter.calendar = Calendar(identifier: .persian)
        dateFormatter.dateFormat = format

        return dateFormatter.string(from: self)
    }
}

extension String {
    
    var formatDate: String {
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.dateFormat = "yyyy-MM-dd HH:mm:ss"

        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "MMM dd,yyyy"

        if let date = dateFormatterGet.date(from: self) {
            return dateFormatterPrint.string(from: date)
        }
        
        return self
    }
}
