Pod::Spec.new do |s|
    s.name = 'FooYeepalDigitalBankLandingUI'
    s.version = '2.0.1'
    s.summary = "FooYeepalDigitalBankLandingUI UI"

    s.homepage = "http://foo.mobi"
    s.authors = {"EEK" => "elie.elkoreh@foo-solutions.com", "Ali H"   => "ali.hassoun@foo-solutions.com", "Xing"   => "charbel.hassrouny@foo-solutions.com"}
    s.ios.deployment_target = "15.0"

    s.source = { :git => 'git@github.com:foodeveloper/foo-yeepal-digital-bank-landing-ui.git', :tag => "#{s.version}" }
    s.frameworks = ["CoreTelephony", "SystemConfiguration", "UserNotifications", "WebKit", "UIKit", "LocalAuthentication"]
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
    s.swift_versions = '5.0'
    s.default_subspecs = 'Framework'
   
   s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooYeepalDigitalBankLandingUI.xcframework'
        f.dependency "FooEBankingLoans"
        f.dependency "FooSdWebImage"
    end
end
