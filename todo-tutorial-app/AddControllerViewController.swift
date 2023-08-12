//
//  AddControllerViewController.swift
//  todo-tutorial-app
//
//  Created by hayato nakasai on 2023/08/13.
//

import UIKit

var TodoItem = [String]()

class AddControllerViewController: UIViewController {

    @IBOutlet weak var TodoTextField: UITextField!
    @IBAction func TodoAddButton(_ sender: Any) {
        TodoItem.append(TodoTextField.text!)
        TodoTextField.text = ""
        UserDefaults.standard.set(TodoItem, forKey: "TodoList")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
