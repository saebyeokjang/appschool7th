//
//  ViewController.swift
//  HostingControllerDemo
//
//  Created by Saebyeok Jang on 1/23/25.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swiftUIViewController = UIHostingController(rootView: SwiftUIView(text: "Integration Three"))
        addChild(swiftUIViewController)
        swiftUIViewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(swiftUIViewController.view)
        
        swiftUIViewController.view.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        swiftUIViewController.view.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        swiftUIViewController.didMove(toParent: self)
        
    }

    @IBSegueAction func showSwiftUIView(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: SwiftUIView(text: "Integraion One"))
    }
    @IBSegueAction func embedSwiftUIView(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: SwiftUIView(text: "Integraion Two"))
    }
    
}

