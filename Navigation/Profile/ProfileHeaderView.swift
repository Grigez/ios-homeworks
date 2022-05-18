//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Дмитрий Григорьев on 10.05.2022.
//

import UIKit

class ProfileHeaderView: UIView {

    private lazy var avatarImageView: UIImageView = {
        let avatarImageView = UIImageView(image: UIImage(named: "Photo"))
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarImageView.layer.masksToBounds = true
        avatarImageView.layer.cornerRadius = 75
        avatarImageView.layer.borderWidth = 3
        avatarImageView.layer.borderColor = UIColor.white.cgColor
        return avatarImageView
    } ()
    
    private lazy var fullNameLabel: UILabel = {
        let fullNameLabel = UILabel()
        fullNameLabel.translatesAutoresizingMaskIntoConstraints = false
        fullNameLabel.text = "Дмитрий Григорьев"
        fullNameLabel.textColor = UIColor.black
        fullNameLabel.font = .systemFont(ofSize: 18, weight: .bold)
        return fullNameLabel
    } ()
    
    private lazy var statusLabel: UILabel = {
        let statusLabel = UILabel()
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        statusLabel.text = "Ожидание статуса..."
        statusLabel.textColor = UIColor.gray
        statusLabel.font = .systemFont(ofSize: 14, weight: .regular)
        return statusLabel
    } ()
    
    private lazy var statusTextField: UIControl = {
        let statusTextField = UIControl()
        statusTextField.translatesAutoresizingMaskIntoConstraints = false
        return statusTextField
    } ()
    
    private lazy var setStatusButton: UIButton = {
        let setStatusButton = UIButton()
        setStatusButton.translatesAutoresizingMaskIntoConstraints = false
        setStatusButton.setTitle("Актуальный статус", for: .normal)
        setStatusButton.backgroundColor = UIColor.blue
        setStatusButton.titleLabel?.textColor = .white
        setStatusButton.layer.cornerRadius = 4
        setStatusButton.titleLabel?.textAlignment = .center
        setStatusButton.titleLabel?.accessibilityIgnoresInvertColors = true
        setStatusButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return setStatusButton
    } ()
    
    @objc func buttonPressed() {
        statusLabel.text = "Актуальный статус"
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(avatarImageView)
        addSubview(fullNameLabel)
        addSubview(statusLabel)
        addSubview(statusTextField)
        addSubview(setStatusButton)
     
        NSLayoutConstraint.activate([
            avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            avatarImageView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            avatarImageView.widthAnchor.constraint(equalToConstant: 150),
            avatarImageView.heightAnchor.constraint(equalToConstant: 150)
        ])
        
        NSLayoutConstraint.activate([
            fullNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 16),
            fullNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            fullNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 27)
        ])
        
        NSLayoutConstraint.activate([
            statusLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 16),
            statusLabel.bottomAnchor.constraint(equalTo: setStatusButton.topAnchor, constant: -34)
        ])
        
        NSLayoutConstraint.activate([
            setStatusButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
            setStatusButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
            setStatusButton.heightAnchor.constraint(equalToConstant: 50),
            setStatusButton.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 16)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
