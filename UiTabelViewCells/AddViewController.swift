//
//  AddViewController.swift
//  UiTabelViewCells
//
//  Created by Admin on 08.12.2019.
//  Copyright © 2019 Ilya Ilushenko. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    var type : Int = -1
    
    var handler : ((String?, Int) -> Void)?
    
    
    @IBOutlet weak var labelName: UITextField!
    
    
    @IBOutlet weak var buttonStudents: UIButton!
    
    
    @IBOutlet weak var buttonFree: UIButton!
    
    
    @IBOutlet weak var buttonOff: UIButton!
    
    @IBAction func AddCell(_ sender: Any) {
        if type < 0 && labelName.text?.isEmpty == true {
            return
        }
        dismiss(animated: true) {
            self.handler?(self.labelName.text, self.type)
        }
    }
    
    @IBAction func ButtonAction(_ sender: Any) {
        guard let button = sender as? UIButton else {
            return
        }
        buttonStudents.setImage(nil, for: .normal)
        buttonFree.setImage(nil, for: .normal)
        buttonOff.setImage(nil, for: .normal)
        
        switch button {
        case buttonStudents:
            type = 0
            button.setImage(#imageLiteral(resourceName: "Image"), for: .normal)
        case buttonFree:
            type = 1
            button.setImage(#imageLiteral(resourceName: "Image-1"), for: .normal)
        case buttonOff:
            type = 2
            button.setImage(#imageLiteral(resourceName: "Image-2"), for: .normal)
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    
    
 
    @IBAction func GoToroodt(_ sender: UIButton) {
        dismiss(animated: true) {
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
