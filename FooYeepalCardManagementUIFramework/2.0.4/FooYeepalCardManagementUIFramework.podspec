Pod::Spec.new do |s|
    s.name = "FooYeepalCardManagementUIFramework"
    s.version = "2.0.4"
    s.summary = "Foo Yeepal Card Management UI"
   
    s.homepage = "http://foo.mobi"
    s.authors = {"Zaher" => "zaher.haidar@foo-solutions.com", "Ali H"   => "ali.hassoun@foo-solutions.com", "Xing"   => "charbel.hassrouny@foo-solutions.com"}
    s.ios.deployment_target = "15.0"

    s.source = { :git => "git@github.com:foodeveloper/foo-yeepal-2.0-card-management-ui.git", :tag => "#{s.version}"}
    s.frameworks = ["CoreTelephony", "SystemConfiguration", "UserNotifications", "WebKit", "UIKit", "LocalAuthentication"]
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
   
    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'
    s.static_framework = true
   
    s.subspec 'Framework' do |f|
        f.vendored_frameworks = "xcframework/FooYeepalCardManagementUI.xcframework"
        f.dependency "FooCardControlFramework"
        f.dependency "FooVCNFramework"
        f.dependency "FooYeepalAddMoneyUIFramework"
        f.dependency "FooAddressFramework"
        f.dependency "FooBranchFramework"
        f.dependency "FooMultiCurrencyFramework"
        f.pod_target_xcconfig = {
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 
    }
    end
end
