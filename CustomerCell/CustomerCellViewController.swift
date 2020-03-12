//
//  ViewController.swift
//  CustomerCell
//
//  Created by Anmol singh on 2020-03-09.
//  Copyright © 2020 Swift Project. All rights reserved.
//

import UIKit
class CustomCellViewController: UIViewController {
    var originalPersonList : [Person] = []
    var filterPersonList: [Person] = []
    var searchController: UISearchController
   
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    getData()
  }
  private func getData()
  {
    personList.append(Person(id: 1, firstName: "Aman", lastName: "Kaur", email: "a@a.com"))
    personList.append(Person(id: 2, firstName: "Anmol", lastName: "Singh", email: "b@a.com"))
    personList.append(Person(id: 3, firstName: "Roop", lastName: "Virk", email: "c@a.com"))
    personList.append(Person(id: 4, firstName: "Monika", lastName: "Sharma", email: "d@a.com"))
    personList.append(Person(id: 5, firstName: "Kritima", lastName: "Kukreja", email: "e@a.com"))
  }
   
}
extension CustomCellViewController : UITableViewDelegate, UITableViewDataSource
{
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.personList.count
  }
   
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
    let cell = tableView.dequeueReusableCell(withIdentifier: "PersonTableViewCell", for: indexPath) as! PersonTableViewCell
     
    let person = personList[indexPath.row]
     
    cell.iFirstName.text = person.firstName
    
    cell.iLastName.text = person.lastName
    cell.iEmail.text = person.email
     
    return cell
  }
   
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return CGFloat(100.0)
  }
   
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
}
