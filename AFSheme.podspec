#
# Be sure to run `pod lib lint AFSheme.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AFSheme'
  s.version          = '0.1.0'
  s.summary          = 'AFSheme enable you to perform the transition from everywhere to any view.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  AFSheme enable you to use JavaScript to perform transition in your native app easily.
  You can use AFSheme simply to set afShemeMappingDictionary to your Appdelegate as an class function.
                       DESC

  s.homepage         = 'https://github.com/aoifukuoka/AFSheme'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Aoi Fukuoka' => 'aoponaopon85746@gmail.com' }
  s.source           = { :git => 'https://github.com/aoifukuoka/AFSheme.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'AFSheme/Classes/**/*'
  
  # s.resource_bundles = {
  #   'AFSheme' => ['AFSheme/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
