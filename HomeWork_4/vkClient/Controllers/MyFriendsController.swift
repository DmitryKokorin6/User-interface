//
//  MyFriendsController.swift
//  vkClient
//
//  Created by Rodion Molchanov on 31.05.2022.
//

import UIKit

class MyFriendsController: UIViewController {

    
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var receiverLabel: UILabel!
    
    func fillDate() -> [Friend] {
        let friend1 = Friend(name: "Анька Красотка", fotoAlbum: [], avatar: "Macintoch HD/Users/dmitrijkokorin/Downloads/photo_2022-06-03 20.53.37.jpeg", age: "20 лет")
        let friend2 = Friend(name: "Мамочка", fotoAlbum: [], avatar: "mommy", age: "18 лет")
        let friend3 = Friend(name: "Батя", fotoAlbum: [], avatar: "daddy", age: "44 года")
        
        var friendsArray = [Friend]()
        friendsArray.append(friend1)
        friendsArray.append(friend2)
        friendsArray.append(friend3)
        
        return friendsArray
    }
    
    var myFriends = [Friend]()
    
    let customTableViewCell = "customTableViewCell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myFriends = fillDate()
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: customTableViewCell)
        tableView.delegate = self
    }
    
    
 
}


extension MyFriendsController: UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriends.count
    }

    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: customTableViewCell, for: indexPath) as? CustomTableViewCell
        else {
            return UITableViewCell()
        }
        
        let friends = myFriends[indexPath.row]
        
        cell.configure(image: UIImage(systemName: friends.avatar!), name: friends.name, description: friends.age)
        return cell
    }
}


extension MyFriendsController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
