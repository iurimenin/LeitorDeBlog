//
//  DetailViewController.swift
//  LeitorDeBlog
//
//  Created by Iuri Menin on 08/08/16.
//  Copyright © 2016 Iuri Menin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        
        if let detailItem: AnyObject = self.detailItem {
            
            if let wv = self.webView {
                
                wv.loadHTMLString(detailItem.valueForKey("content")!.description, baseURL: nil)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

