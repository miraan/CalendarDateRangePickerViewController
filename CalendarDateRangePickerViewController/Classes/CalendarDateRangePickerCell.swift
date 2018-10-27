//
//  CalendarDateRangePickerCell.swift
//  CalendarDateRangePickerViewController
//
//  Created by Miraan on 15/10/2017.
//  Copyright © 2017 Miraan. All rights reserved.
//

import UIKit

class CalendarDateRangePickerCell: UICollectionViewCell {
    
    private let defaultTextColor = UIColor.darkGray
    var highlightedColor = UIColor(white: 0.9, alpha: 1.0)
    private let disabledColor = UIColor.lightGray
    var font = UIFont(name: "HelveticaNeue", size: CalendarDateRangePickerViewController.defaultCellFontSize) {
        didSet {
            label?.font = font
        }
    }
    
    @objc var selectedColor: UIColor!
    @objc var selectedLabelColor: UIColor!
    @objc var highlightedLabelColor: UIColor!
    @objc var disabledDates: [Date]!
    @objc var disabledTimestampDates: [Int]?
    @objc var date: Date?
    @objc var selectedView: UIView?
    @objc var halfBackgroundView: UIView?
    @objc var roundHighlightView: UIView?
    
    @objc var label: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        initLabel()
    }
    
    @objc func initLabel() {
        label = UILabel(frame: frame)
        label.center = CGPoint(x: frame.size.width / 2, y: frame.size.height / 2)
        label.font = font
        label.textColor = UIColor.darkGray
        label.textAlignment = NSTextAlignment.center
        self.addSubview(label)
    }
    
    @objc func reset() {
        self.backgroundColor = UIColor.clear
        label.textColor = defaultTextColor
        label.backgroundColor = UIColor.clear
        if selectedView != nil {
            selectedView?.removeFromSuperview()
            selectedView = nil
        }
        if halfBackgroundView != nil {
            halfBackgroundView?.removeFromSuperview()
            halfBackgroundView = nil
        }
        if roundHighlightView != nil {
            roundHighlightView?.removeFromSuperview()
            roundHighlightView = nil
        }
    }
    
    @objc func select() {
        let width = self.frame.size.width
        let height = self.frame.size.height
        selectedView = UIView(frame: CGRect(x: (width - height) / 2, y: 0, width: height, height: height))
        selectedView?.backgroundColor = selectedColor
        selectedView?.layer.cornerRadius = height / 2
        self.addSubview(selectedView!)
        self.sendSubview(toBack: selectedView!)
        
        label.textColor = selectedLabelColor
    }
    
    @objc func highlightRight() {
        // This is used instead of highlight() when we need to highlight cell with a rounded edge on the left
        let width = self.frame.size.width
        let height = self.frame.size.height
        halfBackgroundView = UIView(frame: CGRect(x: width / 2, y: 0, width: width / 2, height: height))
        halfBackgroundView?.backgroundColor = highlightedColor
        self.addSubview(halfBackgroundView!)
        self.sendSubview(toBack: halfBackgroundView!)
        label.textColor = highlightedLabelColor
        addRoundHighlightView()
    }
    
    @objc func highlightLeft() {
        // This is used instead of highlight() when we need to highlight the cell with a rounded edge on the right
        let width = self.frame.size.width
        let height = self.frame.size.height
        halfBackgroundView = UIView(frame: CGRect(x: 0, y: 0, width: width / 2, height: height))
        halfBackgroundView?.backgroundColor = highlightedColor
        self.addSubview(halfBackgroundView!)
        self.sendSubview(toBack: halfBackgroundView!)
        label.textColor = highlightedLabelColor

        addRoundHighlightView()
    }
    
    @objc func addRoundHighlightView() {
        let width = self.frame.size.width
        let height = self.frame.size.height
        roundHighlightView = UIView(frame: CGRect(x: (width - height) / 2, y: 0, width: height, height: height))
        roundHighlightView?.backgroundColor = highlightedColor
        roundHighlightView?.layer.cornerRadius = height / 2
        self.addSubview(roundHighlightView!)
        self.sendSubview(toBack: roundHighlightView!)
    }
    
    @objc func highlight() {
        self.backgroundColor = highlightedColor
        label.textColor = highlightedLabelColor

    }
    
    @objc func disable() {
        label.textColor = disabledColor
        
    }
    
}
