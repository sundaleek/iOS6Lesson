//
//  ViewController.swift
//  iOS6Lesson
//
//  Created by Mac on 6/18/24.
//

import UIKit

final class ViewController: UIViewController {
    
//    private unowned var vc2: ViewController2
//    
//    init() {
//        super.init(nibName: nil, bundle: nil)
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    private let button: UIButton = {
        let b = UIButton()
        b.setTitle("Open Screen", for: .normal)
        return b
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.addSubview(button)
        button.frame = .init(origin: view.center, size: .init(width: 100, height: 50))
        button.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
    }

    @objc func buttonTap() {
        let vc = ViewController2()
        vc.parentVC = self
        vc.completionHandler = { [weak self] in
            print("completion handler", self?.button.titleLabel?.text)
        }
        self.present(vc, animated: true)
//        self.vc2 = vc
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            vc.dismiss(animated: true)
        }
    }
    
    
}

