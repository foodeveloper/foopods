Pod::Spec.new do |s|
    s.name = 'FooRequesterWrapper'
    s.version = '1.0.29.3-ompay'
    s.source = { :git => 'git@github.com:foodeveloper/foo-requester-wrapper.git', :tag => "#{s.version}" }
    s.authors = {  "Ali H" => "ali.hassoun@foo-solutions.com", "Xing" => "charbel.hassrouny@foo-solutions.com"  }
    s.ios.deployment_target = "15.0"
    s.summary = "Foo Requester Wrapper"
    s.homepage = "http://foo.mobi"
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
    s.default_subspecs = 'Framework'
    s.swift_versions = '5.0'
    s.subspec 'Framework' do |f|
        f.dependency 'FooFramework'
        f.dependency 'FooAesGcm', '1.0.13'
        f.vendored_frameworks = 'xcframework/FooRequesterWrapper.xcframework'
    end
end
