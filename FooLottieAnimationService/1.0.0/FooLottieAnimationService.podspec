Pod::Spec.new do |s|
   
    s.name = 'FooLottieAnimationService'
    s.version = '1.0.0'
    s.summary = "Foo Lottie Animation Service XCFramework"
    
    s.homepage = "http://foo.mobi"
    s.authors = {  "Abbas K"   => "abbas.kassab@foo.mobi",
                   "EEK"   => "elie.elkoreh@foo.mobi",
                   "JPK" => "jean-pierre.kayle@foo.mobi" }    
    s.ios.deployment_target = "15.0"

    s.source = { :git => 'git@github.com:foodeveloper/foo-lottie-animation-service.git', :tag => "#{s.version}" }

    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }

    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'
    
    s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooLottieAnimationService.xcframework'
        f.dependency 'FooAnimationManager'
        f.dependency 'lottie-ios'
        f.pod_target_xcconfig = {'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
    end
end
