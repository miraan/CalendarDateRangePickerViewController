#
# Be sure to run `pod lib lint CalendarDateRangePickerViewController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CalendarDateRangePickerViewController'
  s.version          = '0.2.0'
  s.summary          = 'A calendar date range picker view controller in Swift for iOS.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This is a calendar date range picker view controller written in Swift for iOS. The typical use case is where you want the user to input a date range, i.e. a start date and an end date. This view controller allows this in an intuitive way, and is easy to use by implementing the delegate methods. See the example project for a taste.
                       DESC

  s.homepage         = 'https://github.com/miraan/CalendarDateRangePickerViewController'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'miraan' => 'miraan@triprapp.com' }
  s.source           = { :git => 'https://github.com/miraan/CalendarDateRangePickerViewController.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'CalendarDateRangePickerViewController/Classes/**/*'
  
  # s.resource_bundles = {
  #   'CalendarDateRangePickerViewController' => ['CalendarDateRangePickerViewController/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
