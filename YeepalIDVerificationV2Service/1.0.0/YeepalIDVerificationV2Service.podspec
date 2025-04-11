Pod::Spec.new do |s|
    s.name = 'YeepalIDVerificationV2Service'
    s.version = '1.0.0'
    s.summary = "Foo YeepalIDVerificationV2ServiceFramework"
   
    s.homepage = "http://foo.mobi"
    s.authors = { "Abbas" => "abbas.kassab@foo.mobi" }
    s.ios.deployment_target = "15.0"

    s.source = { :git => 'git@github.com:foodeveloper/yeepal-id-verification-v2-service.git', :tag => "#{s.version}" }
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES',
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
    
    s.static_framework = true
    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'

     s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/YeepalIDVerificationV2Service.xcframework'
        f.dependency "YeepalProductServicesInterfaces"
        f.dependency "FooYeepalCoreUI"
        f.dependency "FooIdVerificationNFC"
    end
end
