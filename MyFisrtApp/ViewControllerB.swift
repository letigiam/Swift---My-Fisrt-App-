//
//  ViewControllerB.swift
//  MyFisrtApp
//
//  Created by Studente on 01/05/2021.
//

import UIKit

class ViewControllerB: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    @IBOutlet weak var myTableView: UITableView!

    
    
    var myDataSource: [Fruit]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="My Fruit"
        self.populateDataSourse()
        // Do any additional setup after loading the view.
        
    }
    
    func populateDataSourse() {
        let apple1 = Apple.init(name: "Melinda", color: "Red", imageLink: "apple", price: "1.20")
        let apple2 = Apple.init(name: "Gold", color: "Yellow", imageLink: "apple", price: "1.40")
        let watermelon1 = Watermelon.init(name: "Cantalupo", imageLink: "watermelon", price: "0.80", kg: 1.50)
        let watermelon2 = Watermelon.init(name: "Anguria", imageLink: "watermelon", price: "3.80", kg: 8.50)
        let lemon1 = Lemon.init(number: 10, name: "Messina", imageLink: "lemon", price:" 0.50")
        let lemon2 = Lemon.init(number: 10, name: "Ribera", imageLink: "lemon", price: "0.80")
        
        self.myDataSource = [apple1, apple2, watermelon1, watermelon2, lemon1, lemon2]
        
        print("self.myDataSource = \(self.myDataSource?.count ?? 0)")
    }
    
    
    
    // MARK: - TableView DataSourse Delegate
    //si occupa del numero di elementi da mostrare
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = self.myDataSource?.count{
            return count
        }
        else { return 10}
    }
    
    
    
    // MARK: - TableView Delegate
    //si occupa di quali elementi mostrare
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) 
        
        if let dataSource = self.myDataSource {
            let currentFruit = dataSource[indexPath.row]
            cell.imageView?.image = UIImage.init(named: currentFruit.imageLink)
            cell.textLabel?.text = currentFruit.name
            cell.detailTextLabel?.text = currentFruit.imageLink
        }
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("didSelectRowAt \(indexPath.row)")
        self.performSegue(withIdentifier: "ShowFruit", sender: nil)
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        let myIndexPath = self.myTableView.indexPathForSelectedRow
        
        if segue.identifier != nil {
            let destinationVC = segue.destination as! ViewCDetails
            destinationVC.fruit = self.myDataSource![myIndexPath!.row]
        }
    }
    

}
