//
//  ViewController.swift
//  Emoji
//
//  Created by Alejandro Diaz Sotolongo on 4/24/21.
//  Copyright © 2021 aaaa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var Dacooltableview: UITableView!

Jhjhjhjhjhjhjhjhhjhjh
    
    clone2222
    
    var emojis = ["😀", "😌", "😗", "🥰", "🤣"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Dacooltableview.dataSource = self
        Dacooltableview.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSeque", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = seque.destination as? DefinitionViewController
        defVC.emoji = sender as! String
        
    }

}

