//
//  ViewController.swift
//  dogBreeds
//
//  Created by harsh yadav on 25/01/21.
//

import UIKit
import Kingfisher



class ViewController: UIViewController {
    var arrData = [jsonModel]()
    
    
    @IBOutlet weak var tabelview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
        // Do any additional setup after loading the view.
    }
    
    func getData(){let url = URL(string: "https://api.thedogapi.com/v1/breeds")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            do{
                if error == nil{
                    self.arrData =  try JSONDecoder().decode([jsonModel].self, from: data!)
                    
                    for mainarr in self.arrData{
                        print( mainarr.name!)
                    }
                    DispatchQueue.main.async {
                        self.tabelview.reloadData()
                    }
                }
            }catch {
                print(error.localizedDescription)
                
            }
            
        }.resume()
        
    }
}

extension ViewController : UITableViewDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.arrData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : TableViewCell = tabelview.dequeueReusableCell(withIdentifier: "Cell") as! TableViewCell
        cell.name.text = " Name :  \(arrData[indexPath.row].name!)"
        cell.lifespan.text = " \(arrData[indexPath.row].temperament!)"
        //let url = URL(string: arrData[indexPath.row].image.url)
        cell.imageview.kf.setImage(with: URL(string: arrData[indexPath.row].image.url))
        
        return cell
    }
     
}

