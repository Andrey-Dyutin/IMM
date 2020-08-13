//
//  TimetableTableViewController.swift
//  My_App
//
//  Created by Андрей Дютин on 03.08.2020.
//  Copyright © 2020 Андрей Дютин. All rights reserved.
//

import UIKit

class TimetableTableViewController: UITableViewController {
    var objects_1 = [
        Timetable(numberItem: "", nameItem: "Понедельник", description: "", numberCabinet: ""),
        Timetable(numberItem: "1", nameItem: "Стохастический анализ", description: "Халлиулин", numberCabinet: "510"),
        Timetable(numberItem: "2", nameItem: "Функциональный анализ", description: "Гумеров", numberCabinet: "607"),
        Timetable(numberItem: "3", nameItem: "Комплексный анализ", description: "Насыров", numberCabinet: "611"),
        
        Timetable(numberItem: "", nameItem: "Вторник", description: "", numberCabinet: ""),
        Timetable(numberItem: "1", nameItem: "Численные методы", description: "Насибуллин", numberCabinet: "710"),
        Timetable(numberItem: "2", nameItem: "Уравн. с частн. произв.", description: "Киясов", numberCabinet: "609"),
        
        Timetable(numberItem: "", nameItem: "Среда", description: "", numberCabinet: ""),
        Timetable(numberItem: "1", nameItem: "Создание и поддержка сайта", description: "Агафонов", numberCabinet: "701"),
        Timetable(numberItem: "2", nameItem: "Компьютерные технологии", description: "Шафигулин", numberCabinet: "507"),
        Timetable(numberItem: "3", nameItem: "Алгоритмы и структуры данных", description: "Замалиев", numberCabinet: "601"),
        Timetable(numberItem: "4", nameItem: "Комплексный анализ", description: "Насыров", numberCabinet: "811"),
        
        Timetable(numberItem: "", nameItem: "Четверг", description: "", numberCabinet: ""),
        Timetable(numberItem: "1", nameItem: "Стохастический анализ", description: "Халлиулин", numberCabinet: "510"),
        Timetable(numberItem: "2", nameItem: "Компьютерные технологии", description: "Шафигулин", numberCabinet: "507"),
        Timetable(numberItem: "3", nameItem: "Комплексный анализ", description: "Насыров", numberCabinet: "611"),
        
        Timetable(numberItem: "", nameItem: "Пятница", description: "", numberCabinet: ""),
        Timetable(numberItem: "1", nameItem: "Стохастический анализ", description: "Халлиулин", numberCabinet: "510"),
        Timetable(numberItem: "2", nameItem: "Математический анализ", description: "Насыров", numberCabinet: "407"),
        Timetable(numberItem: "3", nameItem: "Комплексный анализ", description: "Насыров", numberCabinet: "611"),
        
        Timetable(numberItem: "", nameItem: "Суббота", description: "", numberCabinet: ""),
        Timetable(numberItem: "1", nameItem: "Стохастический анализ", description: "Халлиулин", numberCabinet: "510"),
        Timetable(numberItem: "2", nameItem: "Функциональный анализ", description: "Гумеров", numberCabinet: "607"),
        Timetable(numberItem: "3", nameItem: "Комплексный анализ", description: "Насыров", numberCabinet: "611")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.title = "Расписание"
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return objects_1.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "timetableCell", for: indexPath) as! TimetableTableViewCell
        let object_1 = objects_1[indexPath.row]
        cell.set(object_1: object_1)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            objects_1.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let moved = objects_1.remove(at: sourceIndexPath.row)
        objects_1.insert(moved, at: destinationIndexPath.row)
        tableView.reloadData()
    }
    
}
