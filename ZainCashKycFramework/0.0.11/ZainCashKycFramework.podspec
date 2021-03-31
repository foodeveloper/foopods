Pod::Spec.new do |s|
    
    s.name = "ZainCashKycFramework"
    s.version = "0.0.11"
    s.source = { :git => "git@github.com:foodeveloper/Zain-Cash-Kyc-Framework.git", :tag => "#{s.version}"}

    s.author       = { 'Abbas' => 'abbas.kassab@foo-solutions.com' }
    s.platform = :ios, "10.0"
    s.ios.deployment_target = "10.0"
    
    s.summary      = 'ZainCash Kyc.'
    s.homepage = "http://foo.mobi"
    s.license= "MIT"
    
    s.default_subspecs = 'Framework'
    
    s.frameworks = ["Accelerate", "AVFoundation", "Contacts", "ContactsUI", "CoreTelephony", "EventKit", "LocalAuthentication", "MobileCoreServices", "Photos", "SafariServices", "SystemConfiguration", "UserNotifications", "WebKit"]
    
    #s.dependency 'FooSdWebImage'
    #s.dependency 'FooMbProgressHud'
    
    s.subspec 'Framework' do |f|
        f.ios.vendored_frameworks = 'ZainCashKyc.framework'
        
        f.pod_target_xcconfig = {
            'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
        }

        f.user_target_xcconfig = {
            'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
        }
    end
end

