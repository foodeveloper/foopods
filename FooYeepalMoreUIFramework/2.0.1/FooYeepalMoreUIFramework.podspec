Pod::Spec.new do |s|
    s.name = "FooYeepalMoreUIFramework"
    s.version = "2.0.1"
    s.summary = "Foo Yeepal More UI"

    s.homepage = "http://foo.mobi"
    s.authors = {"Mireille"   => "mireille.khalifeh@foo-solutions.com", "Ali H"   => "ali.hassoun@foo-solutions.com", "Xing"   => "charbel.hassrouny@foo-solutions.com"}

    s.ios.deployment_target = "15.0"
    s.source = { :git => "git@github.com:foodeveloper/foo-yeepal-2.0-more-ui.git", :tag => "#{s.version}"}
    s.frameworks = ["CoreTelephony", "SystemConfiguration", "UserNotifications", "WebKit", "UIKit", "LocalAuthentication"]

    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
    s.swift_versions = '5.0'
    s.default_subspecs = 'Framework'
    s.static_framework = true

    s.subspec 'Framework' do |f|
     f.vendored_frameworks = 'xcframework/FooYeepalMoreUI.xcframework'
     f.dependency 'FooYeepalCoreUIFramework'
     f.dependency "FooUserInboxFramework"
     f.dependency "FooConsentsFramework"
   end
end