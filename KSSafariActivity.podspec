#
# Be sure to run `pod lib lint KSSafariActivity.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KSSafariActivity'
  s.version          = '0.1.0'
  s.summary          = 'add open safari activity to your ActivityViewControoler'
# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Existing ActivityViewController does not have Activity to open Safari. With KSsafariActivity you can introduce it with just a single line without any concern for developers.
                       DESC

  s.homepage         = 'https://github.com/kohei1218/KSSafariActivity'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kohei1218' => 'yandapanda1218@gmail.com' }
  s.source           = { :git => 'https://github.com/kohei1218/KSSafariActivity.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'KSSafariActivity/Classes/**/*'
  
  s.resource_bundles = {
    'KSSafariActivity' => ['KSSafariActivity/Assets/ks_safari_activity_icon.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
