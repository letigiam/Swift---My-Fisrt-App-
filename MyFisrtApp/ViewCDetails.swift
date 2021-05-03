//
//  ViewCDetails.swift
//  MyFisrtApp
//
//  Created by Studente on 02/05/2021.
//

import UIKit

class ViewCDetails: UIViewController {

    @IBOutlet weak var myImageDetails: UIImageView!
    @IBOutlet weak var myNameFruit: UILabel!
    @IBOutlet weak var detailsFruit: UILabel!
    @IBOutlet weak var myPriceFruit: UILabel!
    @IBOutlet weak var myDetails: UILabel!
    @IBOutlet weak var myLabelDetails: UILabel!
    
    var fruit: Fruit?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewCDetails: ViewCDetails")
        self.setUI()
    }
    
    func setUI() {
        if let currentFruit = self.fruit {
            self.myImageDetails.image = UIImage.init(named: currentFruit.imageLink)
            self.myNameFruit.text = currentFruit.name
            self.detailsFruit.text = currentFruit.imageLink
            self.myPriceFruit.text = currentFruit.price
            
            //mi prende il numero di limoni
            if let details = currentFruit as? Lemon {
                self.myLabelDetails.text = "Numebr"
                self.myDetails.text = String(details.number)
                
                //mi prende il colore della mela
            } else if let details = currentFruit as? Apple{
                self.myLabelDetails.text = "Color"
                self.myDetails.text = details.color
                
                //mi prende i kg del melone
            } else if let details = currentFruit as? Watermelon{
                //if currentFruit is Watermelon{
                self.myLabelDetails.text = "Kg"
                //}
                self.myDetails.text = String(details.kg)
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
