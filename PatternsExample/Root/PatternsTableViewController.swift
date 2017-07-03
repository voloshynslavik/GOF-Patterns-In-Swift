//
//  ViewController.swift
//  PatternsExample
//
//  Created by Yaroslav Voloshyn on 23/02/2017.
//  Copyright © 2017 Yaroslav Voloshyn. All rights reserved.
//

import UIKit

final class PatternsTableViewController: UITableViewController {

    fileprivate let cellsData = [
        "Creational patterns": [
                                CellData(segue: "toBuilder", name: "Builder"),
                                CellData(segue: "toAbstractFactory", name: "Abstract factory"),
                                CellData(segue: "toFactoryMethod", name: "Factory method"),
                                CellData(segue: "toPrototype", name: "Prototype"),
                                CellData(segue: "toSingleton", name: "Singleton")
                            ],
        "Structural patterns": [
                                CellData(segue: "toAdapter", name: "Adapter"),
                                CellData(segue: "toBridge", name: "Bridge"),
                                CellData(segue: "toComposite", name: "Composite"),
                                CellData(segue: "toDecorator", name: "Decorator"),
                                CellData(segue: "toFacade", name: "Facade"),
                                CellData(segue: "toFlyweight", name: "Flyweight"),
                                CellData(segue: "toProxy", name: "Proxy")
                            ],
        "Behavioral patterns": [
                                CellData(segue: "toCommand", name: "Command"),
                                CellData(segue: "toChainOfResponsibility", name: "Chain of responsibility"),
                                CellData(segue: "toInterpreter", name: "Interpreter"),
                                CellData(segue: "toIterator", name: "Iterator"),
                                CellData(segue: "toMediator", name: "Mediator"),
                                CellData(segue: "toMemento", name: "Memento"),
                                CellData(segue: "toObserver", name: "Observer"),
                                CellData(segue: "toState", name: "State"),
                                CellData(segue: "toStrategy", name: "Strategy"),
                                CellData(segue: "toTemplateMethod", name: "Template method"),
                                CellData(segue: "toVisitor", name:"Visitor")
                            ]
    ]

    fileprivate struct CellData {
        let segue: String
        let name: String
    }

    fileprivate func getCellData(with indexPath: IndexPath) -> CellData? {
        guard let header = tableView(self.tableView, titleForHeaderInSection: indexPath.section),
              let cellData = cellsData[header]?[indexPath.row] else {
            return nil
        }
        return cellData
    }
}

extension PatternsTableViewController {

    override func numberOfSections(in tableView: UITableView) -> Int {
        return cellsData.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return Array(cellsData.keys)[section]
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pattern_cell", for: indexPath)
        cell.textLabel?.text = getCellData(with: indexPath)?.name
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cellData = getCellData(with: indexPath) {
            self.performSegue(withIdentifier: cellData.segue, sender: self)
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let header = self.tableView(tableView, titleForHeaderInSection: section),
                let cellsCount = cellsData[header]?.count else {
                return 0
        }
        return cellsCount
    }

}
