#
# Be sure to run `pod lib lint LargeTitleView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LargeTitleView'
  s.version          = '0.9.1'
  s.summary          = 'use large title effects like iOS11 in below iOS11'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  You can use the Large Title effects in below iOS11, but when it's iOS11 or above, please use the origin func
                       DESC

  s.homepage         = 'https://github.com/poisson-natsu/LargeTitleView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'shizhou@live.com' => 'shizhou@live.com' }
  s.source           = { :git => 'https://github.com/poisson-natsu/LargeTitleView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.swift_version = "4.2"
  s.swift_versions = ['4.2', '5.0']

  s.source_files = 'LargeTitleView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LargeTitleView' => ['LargeTitleView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
