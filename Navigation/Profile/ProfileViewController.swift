//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Дмитрий Григорьев on 23.02.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    private lazy var profileHeaderView: ProfileHeaderView = {
        let profileHeaderView = ProfileHeaderView()
        return profileHeaderView
    } ()
    
    private lazy var newButton: UIButton = {
        let newButton = UIButton()
        newButton.setTitle("Новая кнопка", for: .normal)
        return newButton
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Профиль"
        view.backgroundColor = .lightGray
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileHeaderView)
        newButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(newButton)
        NSLayoutConstraint.activate([
            profileHeaderView.leftAnchor.constraint(equalTo: view.leftAnchor),
            profileHeaderView.rightAnchor.constraint(equalTo: view.rightAnchor),
            profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileHeaderView.heightAnchor.constraint(equalToConstant: 220),
            newButton.leftAnchor.constraint(equalTo: view.leftAnchor),
            newButton.rightAnchor.constraint(equalTo: view.rightAnchor),
            newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
}
