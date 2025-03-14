Pod::Spec.new do |s|
    s.name = 'FooVCNSDK'
    s.version = '1.0.0'
    s.summary = "FooVCNSDK Framework"
    
    s.homepage = "http://foo.mobi"
    s.authors = {"Ali H"   => "ali.hassoun@foo-solutions.com", "EEK"   => "elie.elkoreh@foo-solutions.com"}    
    s.ios.deployment_target = "15.0"
   
    s.source = { :git => 'git@github.com:foodeveloper/Foo-VCN-SDK.git', :tag => "#{s.version}" }
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
    s.swift_versions = '5.0'
    s.default_subspecs = 'Framework'

    s.subspec 'Framework' do |f|
        f.dependency "FooYeepalCoreUI"
        f.dependency "FrmKeychain"
        f.dependency "FooSdWebImage"
        f.vendored_frameworks  = 'xcframework/FooVCNSDK.xcframework'
    end
end
