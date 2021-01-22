# Uncomment the next line to define a global platform for your project
platform :ios, '12.0'

target 'Demo' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  inhibit_all_warnings!

  # Pods for Demo
  pod 'IQKeyboardManagerSwift'
  pod 'SWRevealViewController'
  pod 'SDWebImage'
  pod 'SDWebImageWebPCoder'
  pod 'ObjectMapper'
  pod 'Alamofire'
  pod 'SwiftyJSON'
  pod 'JWPlayer-SDK'
  pod 'CarbonKit'
  pod 'XLPagerTabStrip', '~> 8.0'
  pod 'google-cast-sdk-no-bluetooth'
  pod 'PanModal'
  pod 'Analytics', '~> 4.1'
  pod 'NewRelicAgent'
  pod 'Firebase/Messaging'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['EXCLUDED_ARCHS[sdk=iphonesimulator*]'] = 'arm64'
      config.build_settings['EXCLUDED_ARCHS[sdk=watchsimulator*]'] = 'arm64'
      config.build_settings['EXCLUDED_ARCHS[sdk=appletvsimulator*]'] = 'arm64'
    end
  end
end