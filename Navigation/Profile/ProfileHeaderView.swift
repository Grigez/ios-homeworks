//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Дмитрий Григорьев on 10.05.2022.
//

import UIKit

class ProfileHeaderView: UIView {

    private lazy var imageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "Photo"))
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 75
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.white.cgColor 
        return imageView
    } ()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Дмитрий Григорьев"
        return label
    } ()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
        addSubview(nameLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = CGRect(x: 16, y: 16, width: 150, height: 150)
        nameLabel.frame = CGRect(x: (16 + 150 + 16), y: 27, width: self.bounds.width - (16 + 150 + 16) - 16, height: 32)
    }
}
