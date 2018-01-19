//
//  ToastMessage.swift
//  Scepter
//
//  Created by Muhammad Khan on 19/01/2018.
//  Copyright © 2018 Muhammad Khan. All rights reserved.
//

import UIKit

struct ToastMessage {
    
    static func showToast(in vc: UIViewController, message: String) {
        let toastLabel = UILabel(frame: CGRect(x: vc.view.frame.size.width / 2 - 150,
                                               y: vc.view.frame.size.height - 100,
                                               width: 300,
                                               height: 40))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = .center
        toastLabel.font = UIFont(name: "Mark Pro", size: 15.0)
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 20;
        toastLabel.clipsToBounds = true
        vc.view.addSubview(toastLabel)
        UIView.animate(withDuration: 1, delay: 1, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
}
