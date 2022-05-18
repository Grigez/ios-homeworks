//
//  FeedViewController.swift
//  Navigation
//
//  Created by Дмитрий Григорьев on 23.02.2022.
//

import UIKit

class FeedViewController: UIViewController {
    
    let postViewController: PostViewController
    
    init() {
        postViewController = PostViewController()
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.addChild(postViewController)
        
        let button = UIButton(frame: CGRect(x: UIScreen.main.bounds.width/2-50, y: UIScreen.main.bounds.height/2-25, width: 100, height: 50))
        button.backgroundColor = UIColor.orange
        button.setTitle("Пост", for: .normal)
        button.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.accessibilityIgnoresInvertColors = true
        button.addTarget(self, action: #selector(showPost), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    @objc func showPost() {
        let post = Post(title: "Пост")
        postViewController.post = post
        self.navigationController?.pushViewController(postViewController, animated: true)
    }
}
