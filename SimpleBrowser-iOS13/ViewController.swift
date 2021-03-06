//
//  ViewController.swift
//  SimpleBrowser-iOS13
//
//  Created by Dennis Nesanoff on 10.03.2020.
//  Copyright © 2020 Dennis Nesanoff. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.hackingwithswift.com")
        webView.load(URLRequest(url: url!))
        webView.allowsBackForwardNavigationGestures = true
    }


}

