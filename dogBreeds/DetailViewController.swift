//
//  DetailViewController.swift
//  dogBreeds
//
//  Created by harsh yadav on 18/02/21.
//

import UIKit

private let reuseIdentifier = "Cell"

class DetailViewController: UICollectionViewController {
    
    

    @IBOutlet weak var namename: UILabel!
    @IBOutlet weak var breedfor: UILabel!
    @IBOutlet weak var temaparment: UILabel!
    @IBOutlet weak var origin: UILabel!
    @IBOutlet weak var lifespann: UILabel!
    
    //@IBOutlet weak var imageviewww: UIImageView!
    
    
    var strnamename : String! = ""
    var strbreedfor : String! = ""
    var strtemaparment : String! = ""
    var strorigin : String! = " "
    var strlifespann : String! = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        namename.text = strnamename
        breedfor.text = strbreedfor
        temaparment.text = strtemaparment
        origin.text = strorigin
        lifespann.text = strlifespann

    }
    
    
    
    
}
