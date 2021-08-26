//
//  ViewController.swift
//  My Places
//
//  Created by  Stepanok Ivan on 26.08.2021.
//

import UIKit

class ViewController: UITableViewController {

    let restarauntNames = [
    "Балкан Гриль", "Бочка", "Вкусные истории",
        "Дастархан", "Индокитай", "Классик", "Шок",
        "Bonsai", "Burger Heroes", "Kitchen", "Love&Life", "Morris Pub", "Sherlock Holmes", "Speak Easy", "X.O"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    // Высота столбца
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restarauntNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = restarauntNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restarauntNames[indexPath.row])
        // Мы скруглили imageView но не само изображение.
        cell.imageView?.layer.cornerRadius = cell.frame.size.height / 2
        // После этого оно скругляет картинки.
        cell.imageView?.clipsToBounds = true
        
        return cell
        
    }


}

