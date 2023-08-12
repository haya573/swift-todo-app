//
//  ViewController.swift
//  todo-tutorial-app
//
//  Created by hayato nakasai on 2023/08/13.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 表示するセル数を返す
        return TodoItem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let TodoCell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath)
        TodoCell.textLabel!.text = TodoItem[indexPath.row]
        return TodoCell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 追加画面で入力した内容を取得する
        if UserDefaults.standard.object(forKey: "TodoList") != nil {
            TodoItem = UserDefaults.standard.object(forKey: "TodoList") as! [String]
        }
    }


}

