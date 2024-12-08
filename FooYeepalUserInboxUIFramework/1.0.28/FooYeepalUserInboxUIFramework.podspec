Pod::Spec.new do |s|
    s.name = "FooYeepalUserInboxUIFramework"
    s.version = "1.0.28"
    s.summary = "Foo Yeepal Notifications UI"
   
    s.homepage = "http://foo.mobi"
    s.authors = {"Ali H"   => "ali.hassoun@foo-solutions.com", "Xing"   => "charbel.hassrouny@foo-solutions.com"}
    s.ios.deployment_target = "15.0"

    s.source = { :git => "git@github.com:foodeveloper/foo-yeepal-2.0-user-inbox-ui.git", :tag => "#{s.version}"}
    s.frameworks = ["CoreTelephony", "SystemConfiguration", "UserNotifications", "WebKit", "UIKit", "LocalAuthentication"]
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }

    s.swift_versions = '5.0'
    s.default_subspecs = 'Framework'
    s.static_framework = true

  s.subspec 'Framework' do |f|
     f.vendored_frameworks = 'xcframework/FooYeepalUserInboxUI.xcframework'
     f.dependency "FooUserInboxFramework"
     f.dependency 'FooYeepalCoreUIFramework'
   end
end