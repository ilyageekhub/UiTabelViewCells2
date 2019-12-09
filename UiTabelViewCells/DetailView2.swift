//
//  DetailView2.swift
//  UiTabelViewCells
//
//  Created by Admin on 08.12.2019.
//  Copyright © 2019 Ilya Ilushenko. All rights reserved.
//

import UIKit

class DetailView2: UIViewController {
    
    
    @IBOutlet weak var textEdit: UITextField!
    
    var name : String?
    
    var handler : ((String?) -> Void)?
    
    
    @IBAction func saveAction(_ sender: Any) {
        if textEdit.text?.isEmpty == false{
            handler?(textEdit.text)
            navigationController?.popToRootViewController(animated: true)
        }
        
    }
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        textEdit.text = name
    }
    
    @IBAction func GotToRoot(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
        
    }
    
    
}
