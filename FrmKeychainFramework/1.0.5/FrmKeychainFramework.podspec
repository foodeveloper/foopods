Pod::Spec.new do |s|
    s.name = "FrmKeychainFramework"
    s.version = "1.0.5"
    s.source = { :git => "git@github.com:foodeveloper/frm-keychain.git", :tag => "#{s.version}"}
    s.authors = {  "Xing"   => "charbel.hasrouni@foo.mobi"  }
    s.ios.deployment_target = "15.0"
    s.summary = "Framework Keychain"
    s.homepage = "http://foo.mobi"
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
    s.default_subspecs = 'Framework'
    s.swift_versions = '5.0'
    s.subspec 'Framework' do |f|
        f.dependency "FooKeychainManagerFramework"
        f.vendored_frameworks = 'xcframework/FrmKeychain.xcframework'
    end
end
