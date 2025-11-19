Pod::Spec.new do |s|
   
    s.name = 'FooEBankingCommon'
    s.version = '2.0.5'
    s.summary = "Foo EBanking Common"
    
    s.homepage = "http://foo.mobi"
    s.authors = {  "Abbas K"   => "abbas.kassab@foo.mobi",
                   "EEK"   => "elie.elkoreh@foo.mobi" }    
    s.ios.deployment_target = "15.0"

    s.source = { :git => 'git@github.com:foodeveloper/foo-ebanking-common.git', :tag => "#{s.version}" }
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }

    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'
    
    s.subspec 'Framework' do |d|
        d.vendored_frameworks = 'xcframework/FooEBankingCommon.xcframework'
        d.dependency 'FooYeepalCoreUI'
        d.dependency 'FooActionSheetPicker'
        d.dependency 'ActionSheetPicker-3.0', '2.7.1'
    end
end
