Pod::Spec.new do |s|
   
    s.name = 'FooDigitalOnboarding'
    s.version = '2.0.0'
    s.summary = "Foo Digital Onboarding"
    
    s.homepage = "http://foo.mobi"
    s.authors = {  "Abbas K"   => "abbas.kassab@foo.mobi" }    
    s.ios.deployment_target = "15.0"

    s.source = { :git => 'git@github.com:foodeveloper/Foo-Digital-Onboarding.git', :tag => "#{s.version}" }
    
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }

    s.swift_versions = '5.0'
   
    s.default_subspecs = 'Framework'
    s.static_framework = true

    s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooDigitalOnboarding.xcframework'
        f.dependency "FooYeepalCoreUI"
        f.dependency "FooIdVerificationNFC"
        f.pod_target_xcconfig = {'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}

    end
end
