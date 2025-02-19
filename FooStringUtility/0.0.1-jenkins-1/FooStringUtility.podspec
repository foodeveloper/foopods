Pod::Spec.new do |s|
    s.name = 'FooStringUtility'
    s.version = '0.0.1-jenkins-1'
    s.source = { :git => 'git@git.foo.mobi:mobile/ios/xcframeworks/foo-string-utility-xcframework.git', :tag => "#{s.version}" }
    s.authors = { 'Charbel Hasrouni' => 'charbel.hasrouni@foo.mobi' }
    s.ios.deployment_target = '15.0'
    s.summary = 'FOO String Utility'
    s.homepage = 'http://foo.mobi'
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
    s.default_subspecs = 'Framework'
    s.subspec 'Framework' do |d|
        d.vendored_frameworks = 'xcframework/FooStringUtility.xcframework'
    end
    
end