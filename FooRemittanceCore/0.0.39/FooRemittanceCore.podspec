Pod::Spec.new do |s|
    
    s.name = 'FooRemittanceCore'
    s.version = '0.0.39'
    s.summary = "FooRemittanceCore"
    s.homepage = "http://foo.mobi"
    s.authors = {  "Zaher Haidar"   => "zaher.haidark@foo.mobi" }
    s.ios.deployment_target = "15.0"
    s.source = { :git => 'git@github.com:foodeveloper/foo-remittance-core.git', :tag => "#{s.version}" }
    s.frameworks = ["CoreTelephony", "SystemConfiguration", "UserNotifications", "WebKit", "LocalAuthentication"]
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
    s.swift_versions = '5.0'
    s.default_subspecs = 'Framework'

    s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooRemittanceCore.xcframework'
        f.dependency "FooDFCore"
    end
    
end
