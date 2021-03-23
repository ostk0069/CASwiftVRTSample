//
//  HomeViewController.swift
//  CASwiftSample
//
//  Created by 長田 卓馬 on 2021/03/23.
//

import UIKit
import ReactiveSwift
import Component

final class HomeViewController: UIViewController {
    
    @IBOutlet weak var navigateButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigateButton.reactive.controlEvents(.touchUpInside)
            .map(value: ())
            .take(duringLifetimeOf: self)
            .observeValues { [weak self] in
                let adapter = SpeakerAdapter()
                let controller = SpeakerViewController(adapter: adapter)
                self?.present(controller, animated: true)
            }
    }
}
