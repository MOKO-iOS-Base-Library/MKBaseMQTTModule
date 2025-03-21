#
# Be sure to run `pod lib lint MKBaseMQTTModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MKBaseMQTTModule'
  s.version          = '0.0.9'
  s.summary          = 'A short description of MKBaseMQTTModule.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/MOKO-iOS-Base-Library/MKBaseMQTTModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'aadyx2007@163.com' => 'aadyx2007@163.com' }
  s.source           = { :git => 'https://github.com/MOKO-iOS-Base-Library/MKBaseMQTTModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '14.0'

  s.subspec 'MQTT' do |ss|
    ss.source_files = 'MKBaseMQTTModule/Classes/MQTT/**'
    
    ss.dependency 'MKBaseMQTTModule/MQTTClient'
  end
  
  s.subspec 'MQTTClient' do |ss|
    ss.source_files = 'MKBaseMQTTModule/Classes/MQTTClient/**'
  end
  
  s.subspec 'NetworkManager' do |ss|
    ss.source_files = 'MKBaseMQTTModule/Classes/NetworkManager/**'
  end

  
end
