//
//  DetailViewController.swift
//  UiTabelViewCells
//
//  Created by Admin on 09.12.2019.
//  Copyright © 2019 Ilya Ilushenko. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    
    var name: String? {
        didSet{
            labelName?.text = name
        }
    }
    var index: IndexPath?
    
    var handler: ((String?)-> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
     labelName.text = name
        // Do any additional setup after loading the view.
    }
    

    @IBAction func actionEdit(_ sender: Any) {
        performSegue(withIdentifier: "Edit", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Edit", let controller = segue.destination as? DetailView2{
            controller.name = name
            controller.handler = { name in
                self.name = name
                self.handler?(name)
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
