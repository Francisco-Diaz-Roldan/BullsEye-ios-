//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Francisco Díaz Roldán on 7/3/24.
//

import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var webView : UIWebView!


    @IBAction func close(){
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let url = Bundle.main.url(forResource: "BullsEye", withExtension: "html"){
            if let htmlData = try? Data(contentsOf: url){
                let baseURL = URL(fileURLWithPath: Bundle.main.bundlePath)
                webView.load(htmlData, mimeType: "text/html", textEncodingName: "UTF-8", baseURL: baseURL)
            }
        }
    }

}
