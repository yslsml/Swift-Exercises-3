//
//  ViewController.swift
//  HomeTask4
//
//  Created by Milana Antonova on 3.01.23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tupleArray = [(1, "x"), (4, "y"), (6, "a")]
        print(task(tupleArray))
    }

    func task(_ tupleArray: [(Int, String)]) -> [(Int, String)] {
        return tupleArray
            .map({ ($0.0 * $0.0, $0.1) })
            .filter({ $0.0 % 2 == 0 })
            .sorted(by: { $0.1 < $1.1 })
    }

}

