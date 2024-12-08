Pod::Spec.new do |s|
    s.name = "FooYeepalP2PUIFramework"
    s.version = "1.0.73"
    s.summary = "Foo Yeepal P2P UI"

    s.homepage = "http://foo.mobi"
    s.authors = { "Ali H"   => "ali.hassoun@foo-solutions.com", "Xing"   => "charbel.hassrouny@foo-solutions.com"}
    s.ios.deployment_target = "15.0"

    s.source = { :git => "git@github.com:foodeveloper/foo-yeepal-2.0-p2p-ui.git", :tag => "#{s.version}"}
    s.frameworks = ["CoreTelephony", "SystemConfiguration", "UserNotifications", "WebKit", "UIKit", "LocalAuthentication"]
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }

    s.swift_versions = '5.0'
    s.default_subspecs = 'Framework'
    s.static_framework = true

     s.subspec 'Framework' do |f|
       f.vendored_frameworks = "xcframework/FooYeepalP2PUI.xcframework"
       f.dependency 'FooP2PFramework'
       f.dependency 'FooYeepalAddMoneyUIFramework'

     f.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    }
  end

end
