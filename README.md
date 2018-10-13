# KSSafariActivity

[![CI Status](https://img.shields.io/travis/kohei1218/KSSafariActivity.svg?style=flat)](https://travis-ci.org/kohei1218/KSSafariActivity)
[![Version](https://img.shields.io/cocoapods/v/KSSafariActivity.svg?style=flat)](https://cocoapods.org/pods/KSSafariActivity)
[![License](https://img.shields.io/cocoapods/l/KSSafariActivity.svg?style=flat)](https://cocoapods.org/pods/KSSafariActivity)
[![Platform](https://img.shields.io/cocoapods/p/KSSafariActivity.svg?style=flat)](https://cocoapods.org/pods/KSSafariActivity)

Existing ActivityViewController does not have Activity to open Safari. With KSsafariActivity you can introduce it with just a single line without any concern for developers.

![](https://github.com/kohei1218/KSSafariActivity/blob/master/image.png)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
- Swift 3.0 or later
- iOS 8.0 or later

## Usage
```
// Create a KSSafariActivity with title and url
let ksSafariActivity = KSSafariActivity(title: "open safari", url: URL(string: "https://yourUrl"))

// Passing to applicationActivities just transitions as usual
let activityViewController = UIActivityViewController(activityItems: [""], applicationActivities: [ksSafariActivity])
present(activity, animated: true, completion: nil)
```

## Installation

KSSafariActivity is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'KSSafariActivity'
```

## Author

kohei1218, yandapanda1218@gmail.com

## License

KSSafariActivity is available under the MIT license. See the LICENSE file for more info.
