//
//  InfoViewController.swift
//  Navigation
//
//  Created by Дмитрий Григорьев on 23.02.2022.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Информация"
        view.backgroundColor = UIColor.gray
        
        let button = UIButton(frame: CGRect(x: UIScreen.main.bounds.width/2-50, y: UIScreen.main.bounds.height/2-25, width: 100, height: 50))
        button.backgroundColor = UIColor.gray
        button.setTitle("Опрос", for: .normal)
        button.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.accessibilityIgnoresInvertColors = true
        button.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    @objc func showAlert() {
        let alertController = UIAlertController(title: "Здесь будет название вопроса", message: "Здесь будет вопрос?", preferredStyle: .alert)
        
        let yesAction = UIAlertAction(title: "Да", style: .default) { (action) -> Void in
            print("Вариант 1")
        }
        
        let noAction = UIAlertAction(title: "Нет", style: .default) { (action) -> Void in
            print("Вариант 2")
        }
        
        alertController.addAction(yesAction)
        alertController.addAction(noAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
}
