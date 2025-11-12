Pod::Spec.new do |s|
    s.name = 'FooRemittanceUI'
    s.version = '0.0.96'
    s.summary = "Foo Remittance UI"
    
    s.homepage = "http://foo.mobi"
    s.authors = { "Zaher H"   => "zaher.haidar@foo.mobi"}
    s.ios.deployment_target = "15.0"
    
    s.source = { :git => 'git@github.com:foodeveloper/foo-remittance-ui.git', :tag => "#{s.version}" }
    s.frameworks = ["CoreTelephony", "SystemConfiguration", "UserNotifications", "WebKit", "LocalAuthentication"]
    
    s.pod_target_xcconfig = {
        'DEFINES_MODULE' => 'YES',
    }
    
    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'
    
    s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooRemittanceUI.xcframework'
        f.dependency "FooRemittanceCore"
        f.dependency "FooFramework"
        f.dependency "FooFrameworkMedia"
        f.dependency "FooCountries"
        f.dependency "PhoneNumberKit", '3.8'
        f.dependency "FooSdWebImage"
    end
    
end
