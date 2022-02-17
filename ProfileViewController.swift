//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Дмитрий Григорьев on 18.02.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let profileView = Bundle.main.loadNibNamed("ProfileView", owner: nil, options: nil)?.first as?
            ProfileView {
            
            profileView.frame = CGRect(x: 15, y: 15, width: view.bounds.width - 30, height: 600)
            view.addSubview(profileView)
        
        }
    }
}
