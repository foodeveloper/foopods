Pod::Spec.new do |s|
    s.name = 'FooYeepalR2PUI'
    s.version = '1.0.10'
    s.summary = 'Foo Yeepal R2P UI'

    s.homepage = "http://foo.mobi"
    s.authors = {  "Abbas K"   => "abbas.kassab@foo.mobi",
                   "EEK"   => "elie.elkoreh@foo.mobi" }
    s.source = { :git => 'git@github.com:foodeveloper/Foo-Yeepal-2.0-R2P-UI.git', :tag => "#{s.version}" }
    
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
    
    s.ios.deployment_target = "15.0"
    s.swift_versions = '5.0'

    s.default_subspecs = 'Framework'
    
    s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooYeepalR2PUI.xcframework'
        f.dependency "FooMasterPassQR"
        f.dependency "FooYeepalAddMoneyUI"
        f.dependency "FooR2P"
    end
end
