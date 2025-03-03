Pod::Spec.new do |s|
   
    s.name = 'FooYeepalRequestsUIFramework'
    s.version = '1.0.5'
    s.summary = "Foo Yeepal Requests UI"
    
    s.homepage = "http://foo.mobi"
    s.authors = {  "EEK"   => "elie.elkoreh@foo.mobi" }
    
    s.ios.deployment_target = "15.0"
    s.source = { :git => "git@github.com:foodeveloper/foo-yeepal-requests-ui.git", :tag => "#{s.version}"}
    s.frameworks = ["CoreTelephony", "SystemConfiguration", "UserNotifications", "WebKit", "UIKit", "LocalAuthentication"]

    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }

    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'
    s.static_framework = true

    s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooYeepalRequestsUI.xcframework'
        f.dependency "FooYeepalRequestsFramework"
        f.dependency "FooYeepalCoreUIFramework"
    end
end
