# CalendarDateRangePickerViewController

[![CI Status](http://img.shields.io/travis/miraan/CalendarDateRangePickerViewController.svg?style=flat)](https://travis-ci.org/miraan/CalendarDateRangePickerViewController)
[![Version](https://img.shields.io/cocoapods/v/CalendarDateRangePickerViewController.svg?style=flat)](http://cocoapods.org/pods/CalendarDateRangePickerViewController)
[![License](https://img.shields.io/cocoapods/l/CalendarDateRangePickerViewController.svg?style=flat)](http://cocoapods.org/pods/CalendarDateRangePickerViewController)
[![Platform](https://img.shields.io/cocoapods/p/CalendarDateRangePickerViewController.svg?style=flat)](http://cocoapods.org/pods/CalendarDateRangePickerViewController)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Usage

It's as simple as:

```
let dateRangePickerViewController = CalendarDateRangePickerViewController(collectionViewLayout: UICollectionViewFlowLayout())
dateRangePickerViewController.delegate = self
let navigationController = UINavigationController(rootViewController: dateRangePickerViewController)
self.navigationController?.present(navigationController, animated: true, completion: nil)
```

Just implement the delegate methods:

```
protocol CalendarDateRangePickerViewControllerDelegate {
    func didTapCancel()
    func didTapDoneWithDateRange(startDate: Date!, endDate: Date!)
}
```

You can also set additional options to override the defaults:

```
dateRangePickerViewController.minimumDate = Date()
dateRangePickerViewController.maximumDate = Calendar.current.date(byAdding: .year, value: 2, to: Date())
dateRangePickerViewController.selectedStartDate = Date()
dateRangePickerViewController.selectedEndDate = Calendar.current.date(byAdding: .day, value: 10, to: Date())
```

## Installation

CalendarDateRangePickerViewController is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CalendarDateRangePickerViewController'
```

## Author

miraan, miraan@triprapp.com

## License

CalendarDateRangePickerViewController is available under the MIT license. See the LICENSE file for more info.
