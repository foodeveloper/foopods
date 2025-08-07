Pod::Spec.new do |s|
    s.name = 'YeepalRemittanceSDKServiceImplementation'
    s.version = '1.0.0'
    s.summary = "Yeepal RemittanceSDK Service Implementation Framework"
   
    s.homepage = "http://foo.mobi"
    s.authors = { "EEK" => "elie.elkoreh@foo.mobi" }
    s.ios.deployment_target = "15.0"

    s.source = { :git => 'git@github.com:foodeveloper/yeepal-remittance-service.git', :tag => "#{s.version}" }
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }

    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'

     s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/YeepalRemittanceSDKServiceImplementation.xcframework'
        f.dependency 'YeepalProductServicesInterfaces'
        f.dependency 'FooRemittanceUISDK'
        f.dependency 'FooConsents'
        f.dependency 'FooPaymentManagement'
    end
end
