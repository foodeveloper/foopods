Pod::Spec.new do |s|

    s.name         = 'ZainCashKycSDK'
    s.version      = '2.0.95'
    s.summary      = 'ZainCash Kyc.'
    s.description  = 'Objective-c Framework of ZainCash Kyc.'

    s.homepage     = 'http://foo.mobi'
    s.license      = 'MIT'
    s.author       = { 'Abbas' => 'abbas.kassab@foo-solutions.com' }
    s.platform     = :ios, '15.0'
    s.ios.deployment_target = '15.0'
    s.source       = { :git => 'git@github.com:foodeveloper/Zain-Cash-KYC.git', :tag => "#{s.version}" }  
    s.static_framework = true
    s.swift_versions = '5.0'  # Added Swift version
    
    s.frameworks = ["Accelerate", "AVFoundation", "Contacts", "ContactsUI", "CoreTelephony", "EventKit", "LocalAuthentication", "MobileCoreServices", "Photos", "SafariServices", "SystemConfiguration", "UserNotifications", "WebKit"]
    
    s.default_subspec = 'Framework'
 s.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }

  s.user_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }

  s.subspec 'Framework' do |f|


	   f.vendored_frameworks = 'xcframework/ZainCashKyc.xcframework'

	   f.dependency 'ZainCashKYCDependencies'
        f.dependency 'FooFrameworkFramework'
        f.dependency 'FooMbProgressHudFramework'

        
    end
    
end

