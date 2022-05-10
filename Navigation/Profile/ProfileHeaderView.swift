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
        return imageView
    } ()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
