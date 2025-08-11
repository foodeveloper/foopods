Pod::Spec.new do |s|
    
    s.name = 'FooYeepalAliasBeneficiariesUI'
    s.version = '1.0.5-ompay'
    
    s.authors = { "Sami" => "sami.sharaf@foo.mobi" }
    s.ios.deployment_target = "15.0"
    
    s.summary = "Yeepal Alias Beneficiaries UI"
    s.homepage = "http://foo.mobi"
    s.license = "MIT"
    s.source = { :git => 'git@github.com:foodeveloper/foo-yeepal-alias-beneficiaries-ui.git', :tag => "#{s.version}" }
    
    s.swift_versions = '5.0'
    
    s.default_subspecs = 'Framework'
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
#    s.static_framework = true
    
    s.subspec 'Framework' do |d|
        d.dependency 'FooYeepalAliasUI'
        d.dependency 'FooRemittanceUISDK'
        d.vendored_frameworks = 'xcframework/FooYeepalAliasBeneficiariesUI.xcframework'
    end
end

