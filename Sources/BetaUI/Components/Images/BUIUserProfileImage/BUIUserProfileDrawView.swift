//
//  BUIUserProfileDrawView.swift
//  TestMe
//
//  Created by Szabolcs Tóth on 2022. 01. 14..
//

import UIKit

public class BUIUserProfileDrawView: UIView {
    
    public var imageWidth: CGFloat
    public var imageHeight: CGFloat
    
    public init(imageWidth: CGFloat, imageHeight: CGFloat) {
        self.imageWidth = imageWidth
        self.imageHeight = imageHeight
        super.init(frame: .zero)
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func draw(_ rect: CGRect) {
        backgroundColor = .clear
        BUIImagesiOSCode.drawBUIUserProfileImage(frame: CGRect(x: 0, y: 0, width: imageWidth, height: imageHeight))
    }
}