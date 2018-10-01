//
//  DetailViewController.swift
//  MyFaves
//
//  Created by cis290 on 10/1/18.
//  Copyright © 2018 Rock Valley College. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var WebSite: UIWebView!
    
    func configureView() {
        // Update the user interface for the detail item.
        if detailItem != nil {
//        if let detail = detailItem {
//            if let label = detailDescriptionLabel {
//                label.text = detail.description
//            }
//        }
        if let myWebview = WebSite {
            if let url = URL(string: detailItem as! String) {
                let request = URLRequest(url: url)
                myWebview.scalesPageToFit = true
                myWebview.loadRequest(request)
                }
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

