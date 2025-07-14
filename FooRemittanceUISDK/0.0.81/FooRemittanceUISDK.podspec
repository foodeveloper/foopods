Pod::Spec.new do |s|
    s.name = 'FooRemittanceUISDK'
    s.version = '0.0.81'
    s.summary = "Foo Remittance UI SDK"
    
    s.homepage = "http://foo.mobi"
    s.authors = { "Zaher H"   => "zaher.haidar@foo.mobi"}
    s.ios.deployment_target = "15.0"
    
    s.source = { :git => 'git@github.com:foodeveloper/foo-remittance-ui-sdk.git', :tag => "#{s.version}" }
    s.frameworks = ["CoreTelephony", "SystemConfiguration", "UserNotifications", "WebKit", "LocalAuthentication"]
        
    s.pod_target_xcconfig = {
        'DEFINES_MODULE' => 'YES',
    }
    
    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'
        
    s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooRemittanceUISDK.xcframework'
        f.dependency "FooRemittanceUI"
    end
    
end
