//
//  ViewController.swift
//  Swift-MVC
//
//  Created by Alfian on 9/27/16.
//  Copyright © 2016 AlfianAlfian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    Services.getMovieList(1, onSuccess: { (arrMovieData) in
      debugPrint(arrMovieData)
    }) { (error) in
      print(error)
    }
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

}

