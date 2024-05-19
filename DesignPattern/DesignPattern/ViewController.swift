//
//  ViewController.swift
//  DesignPattern
//
//  Created by pengshuai on 2024/5/16.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    private var typeDataModels: [DPTypeDataModel]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "23种经典设计模式"
        configTableView()
        loadData()
        
    }
    
    private func configTableView() {
        tableView.rowHeight = 44
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "ListCell")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView()
    }
    
    private func loadData() {
        typeDataModels = DPPatternViewModel.fetchPatternData()
        tableView.reloadData()
    }
    
    
    
}



extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return typeDataModels?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return typeDataModels?[section].contents.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell", for: indexPath)
        cell.textLabel?.text = typeDataModels?[indexPath.section].contents[indexPath.row].name
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return typeDataModels?[section].type
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50.0
    }
}

