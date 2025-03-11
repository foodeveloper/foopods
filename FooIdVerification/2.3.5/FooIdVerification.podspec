Pod::Spec.new do |s|
    s.name = 'FooIdVerification'
    s.version = '2.3.5'
    s.source = { :git => 'git@github.com:foodeveloper/Foo-Id-Verification-Core.git', :tag => "#{s.version}" }
    s.authors = { 'Charbel Hasrouni' => 'charbel.hasrouni@foo.mobi' }
    s.ios.deployment_target = '15.0'
    s.summary = 'Foo Id Verification'
    s.homepage = 'http://foo.mobi'
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
    s.default_subspecs = 'Framework'
    s.swift_versions = '5.0'
    s.subspec 'Framework' do |d|
        d.dependency "FooFramework"
        d.dependency "FRMLoggingSDK"
        d.dependency "FooRequesterWrapper"
        d.vendored_frameworks = 'xcframework/FooIdVerification.xcframework'
    end
    
end