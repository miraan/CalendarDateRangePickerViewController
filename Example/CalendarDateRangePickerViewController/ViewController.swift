//
//  ViewController.swift
//  CalendarDateRangePickerViewController
//
//  Created by Miraan on 15/10/2017.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import CalendarDateRangePickerViewController

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBAction func didTapButton(_ sender: Any) {
        let dateRangePickerViewController = CalendarDateRangePickerViewController(collectionViewLayout: UICollectionViewFlowLayout())
        dateRangePickerViewController.delegate = self
        dateRangePickerViewController.minimumDate = Date()
        dateRangePickerViewController.maximumDate = Calendar.current.date(byAdding: .year, value: 2, to: Date())
        dateRangePickerViewController.selectedStartDate = Date()
        dateRangePickerViewController.selectedEndDate = Calendar.current.date(byAdding: .day, value: 10, to: Date())
        dateRangePickerViewController.selectedColor = UIColor.red
        dateRangePickerViewController.titleText = "Select Date Range"
        let navigationController = UINavigationController(rootViewController: dateRangePickerViewController)
        self.navigationController?.present(navigationController, animated: true, completion: nil)
    }
    
}

extension ViewController : CalendarDateRangePickerViewControllerDelegate {
    
    func didTapCancel() {
        self.navigationController?.dismiss(animated: true, completion: nil)
    }
    
    func didTapDoneWithDateRange(startDate: Date!, endDate: Date!) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, MMM d, yyyy"
        label.text = dateFormatter.string(from: startDate) + " to " + dateFormatter.string(from: endDate)
        self.navigationController?.dismiss(animated: true, completion: nil)
    }
    
}
