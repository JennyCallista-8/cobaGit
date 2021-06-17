//
//  HomieViewController.swift
//  HomeKuCoba
//
//  Created by Jenny Callista on 14/06/21.
//

import UIKit

class HomieViewController: UIViewController, UISearchResultsUpdating {
   
    
   

   
    @IBOutlet weak var vegeBtn: UIButton!
    @IBOutlet weak var fruitsBtn: UIButton!
    @IBOutlet weak var beefBtn: UIButton!
    @IBOutlet weak var chickenBtn: UIButton!
    @IBOutlet weak var CLabel: UILabel!
    @IBOutlet weak var RVLabel: UILabel!
    
    let searchController = UISearchController()
        //searchResultsController: SearchKuViewController())
    override func viewDidLoad() {
        super.viewDidLoad()
//        let searchTable = storyboard!.instantiateViewController(withIdentifier: "SearchKuViewController") as! SearchKuViewController

        
        chickenBtn.layer.cornerRadius = 5
        beefBtn.layer.cornerRadius = 5
        fruitsBtn.layer.cornerRadius = 5
        vegeBtn.layer.cornerRadius = 5
        
        title = "PrepZ"
        //searchController.searchResultsUpdater = searchController
        navigationItem.searchController = searchController
        present(SearchKuViewController(), animated: true, completion: nil)
    }
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {
                    return
                }
        
                print(text)
        
    }

}
    
    //
    //    override func viewDidLoad() {
    //        super.viewDidLoad()
            
    //    }
    //
    //    func updateSearchResults(for searchController: UISearchController) {
    //
    //    }
    //
    //
    //}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


