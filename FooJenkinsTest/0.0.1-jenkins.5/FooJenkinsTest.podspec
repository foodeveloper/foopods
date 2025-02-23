Pod::Spec.new do |s|
    s.name = 'FooJenkinsTest'
    s.version = '0.0.1-jenkins.5'
    s.source = { :git => 'git@github.com:foodeveloper/Foo-Jenkins-Test.git', :tag => "#{s.version}" }
    s.authors = { 'Charbel Hasrouni' => 'charbel.hasrouni@foo.mobi' }
    s.ios.deployment_target = '15.0'
    s.summary = 'Foo Jenkins Framework Test'
    s.homepage = 'https://foo.mobi'
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
    s.vendored_frameworks = 'samerFramework/FooJenkinsTest.xcframework'
    s.dependency 'TrustKit'
end