//
//  ViewController.swift
//  LazyLoadingDemoApp
//
//  Created by Prabhu Patil on 30/07/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var myTableView: UITableView!
    
    var animal: [Animal]? = nil
    var animalData : AnimalNetworkManager = AnimalNetworkManager()
    
  // View related methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        customizeTableView()
        loadDataOnView()
    }


    // Tableview methods
    
    func customizeTableView() {
        myTableView.delegate = self
        myTableView.dataSource = self
        
        let customNib = UINib(nibName: "AnimalCell", bundle: nil)
        myTableView.register(customNib, forCellReuseIdentifier: "AnimalCell")
    }
    
    func loadDataOnView () {
        animalData.getAnimals{(_animalData) in
            if (_animalData?.animals != nil) {
                self.animal = _animalData?.animals
                
                DispatchQueue.main.async {
                    self.myTableView.reloadData()
                }
            }
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.animal?.count ?? 0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath) as! AnimalCell
        
        let animal = self.animal?[indexPath.row]
        cell.animalName.text = animal?.name
        
        let animalImageUrl = URL(string: (animal?.image)!)!
//        let animalImageData = try? Data(contentsOf: animalImageUrl)
//        cell.animalImage.image = UIImage(data: animalImageData!)
        cell.animalImage.loadImage(fromURL: animalImageUrl, placeHolderImage: "LoadImage")
        return cell
    }

}

