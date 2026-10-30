//
//  ViewController.swift
//  TestAppLifeCycle
//
//  Created by Sujeet kumar on 27/10/26.
//

import UIKit

class ViewController: UIViewController {
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad \(count)")
        count += 1
        
        navigationController?.pushViewController(SecondViewController(), animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear \(count)")
        count += 1
       // Called when the view is about to made visible, before it is added to the hierarchy.
        /// Because the view is not yet in the hierarchy at the time this method is called
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        /// Called after the view has fully transitioned to visible, when any transition animations have completed.
        print("viewDidAppear \(count)")
        count += 1
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        /// Called when the view is about to be dismissed, covered, or otherwise hidden.
        print("viewWillDisappear \(count)")
        count += 1
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        /// Called after the view has fully been dismissed, covered, or otherwise hidden, when any transition animations have completed.
        print("viewDidDisappear \(count)")
        count += 1
    }
}

class SecondViewController: UIViewController {
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("SecondViewController->viewDidLoad \(count)")
        count += 1
        
        //navigationController?.pushViewController(<#T##viewController: UIViewController##UIViewController#>, animated: <#T##Bool#>)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("SecondViewController->viewWillAppear \(count)")
        count += 1
       // Called when the view is about to made visible, before it is added to the hierarchy.
        /// Because the view is not yet in the hierarchy at the time this method is called
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        /// Called after the view has fully transitioned to visible, when any transition animations have completed.
        print("SecondViewController->viewDidAppear \(count)")
        count += 1
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        /// Called when the view is about to be dismissed, covered, or otherwise hidden.
        print("SecondViewController->viewWillDisappear \(count)")
        count += 1
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        /// Called after the view has fully been dismissed, covered, or otherwise hidden, when any transition animations have completed.
        print("SecondViewController->viewDidDisappear \(count)")
        count += 1
    }
}

