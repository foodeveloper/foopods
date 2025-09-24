Pod::Spec.new do |s|
    s.name = 'FooYeepalAuthenticationUI'
    s.version = '2.0.16-ompay'
    s.summary = "Foo Yeepal Authentication UI"
    
    s.homepage = "http://foo.mobi"
    s.authors = {"Mireille"   => "mireille.khalifeh@foo-solutions.com", "Ali H"   => "ali.hassoun@foo-solutions.com", "Xing"   => "charbel.hassrouny@foo-solutions.com"}
    s.ios.deployment_target = "15.0"

    s.source = { :git => 'git@github.com:foodeveloper/foo-yeepal-authentication-ui.git', :tag => "#{s.version}" }
    s.frameworks = ["CoreTelephony", "SystemConfiguration", "UserNotifications", "WebKit", "UIKit", "LocalAuthentication"]
    
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
    
    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'

    s.subspec 'Framework' do |d|
       d.vendored_frameworks = 'xcframework/FooYeepalAuthenticationUI.xcframework'
       d.dependency 'FooUAEPass'
       d.dependency 'IQKeyboardManagerSwift'

    end

end
