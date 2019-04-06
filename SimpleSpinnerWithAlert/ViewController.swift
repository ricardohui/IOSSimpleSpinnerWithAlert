//
//  ViewController.swift
//  SimpleSpinnerWithAlert
//
//  Created by Ricardo Hui on 6/4/2019.
//  Copyright © 2019 Ricardo Hui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func showAlert(_ sender: Any) {
        print("alert button pressed")
        let alertController = UIAlertController(title: "Hey there!", message: "Are you sure?", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action) in
            print("OK button pressed")
            self.dismiss(animated: true, completion: nil)
        }))
        
        alertController.addAction(UIAlertAction(title: "No", style: .default, handler: { (action) in
            print("No button pressed")
            self.dismiss(animated: true
                , completion: nil)
        }))
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func pauseApp(_ sender: Any) {
        
        let activityIndicator = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 50, height: 60))
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.style = UIActivityIndicatorView.Style.gray
        view.addSubview(activityIndicator)
        activityIndicator.startAnimating()
        // to pause the app so that user cannot interact the UI until something resolved
        UIApplication.shared.beginIgnoringInteractionEvents()
        
        //unlock the UI when somethign resolved
        UIApplication.shared.endIgnoringInteractionEvents()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

