//
//  ViewController2.swift
//  iOS6Lesson
//
//  Created by Mac on 6/18/24.
//

import UIKit

final class ViewController2: UIViewController {
    
    var parentVC: ViewController?
    var completionHandler: (() -> Void)?
    
    init() {
        super.init(nibName: nil, bundle: nil)
        print(#line, #function, "init")
    }
    
    deinit {
        print(#line, #function, "deinit")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
    
    override func dismiss(animated flag: Bool, completion: (() -> Void)? = nil) {
        super.dismiss(animated: true, completion: completionHandler)
    }
}

//var vc2: ViewController2? = ViewController2()
