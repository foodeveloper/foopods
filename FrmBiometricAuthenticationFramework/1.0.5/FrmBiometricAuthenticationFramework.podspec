Pod::Spec.new do |s|
    s.name = "FrmBiometricAuthenticationFramework"
    s.version = "1.0.5"
    s.source = { :git => "git@github.com:foodeveloper/frm-biometric-authentication.git", :tag => "#{s.version}"}
    s.authors = {  "Xing"   => "charbel.hasoruni@foo.mobi"}
    s.ios.deployment_target = "15.0"
    s.summary = "Framework Biometric Authentication"
    s.homepage = "http://foo.mobi"
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => "YES" }
    s.default_subspecs = 'Framework'
    s.subspec 'Framework' do |f|
        f.dependency "FooRequesterWrapperFramework"
        f.vendored_frameworks = 'xcframework/FrmBiometricAuthentication.xcframework'
    end
end
