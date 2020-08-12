//
//  TimetableTableViewCell.swift
//  My_App
//
//  Created by Андрей Дютин on 03.08.2020.
//  Copyright © 2020 Андрей Дютин. All rights reserved.
//

import UIKit

class TimetableTableViewCell: UITableViewCell {
    @IBOutlet weak var labelNumberItem: UILabel!
    @IBOutlet weak var labelNameItem: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    @IBOutlet weak var labelNumberCabinet: UILabel!
    @IBAction func buttonExitTimetable(_ sender: UIButton) {
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func set(object_1: Timetable) {
             self.labelNumberItem.text = object_1.numberItem
             self.labelNameItem.text = object_1.nameItem
             self.labelDescription.text = object_1.description
             self.labelNumberCabinet.text = object_1.numberCabinet
    }

}
