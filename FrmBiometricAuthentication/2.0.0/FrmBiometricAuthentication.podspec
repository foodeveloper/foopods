Pod::Spec.new do |s|
    s.name = 'FrmBiometricAuthentication'
    s.version = '2.0.0'
    s.source = { :git => 'git@github.com:foodeveloper/frm-biometric-authentication.git', :tag => "#{s.version}" }
  
    s.authors = {  "Xing"   => "charbel.hasoruni@foo.mobi"}
    s.ios.deployment_target = "15.0"
    s.summary = "Framework Biometric Authentication"
  
    s.homepage = "http://foo.mobi"
    
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => "YES" }
    s.default_subspecs = 'Framework'
    s.swift_versions = '5.0'

    s.subspec 'Framework' do |f|
        f.dependency "FooRequesterWrapper"
        f.vendored_frameworks = 'xcframework/FrmBiometricAuthentication.xcframework'
    end
end
