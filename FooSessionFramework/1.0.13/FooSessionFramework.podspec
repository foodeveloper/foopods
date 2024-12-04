Pod::Spec.new do |s|
    s.name = 'FooSessionFramework'
    s.version = '1.0.13'
    s.source = { :git => 'git@github.com:foodeveloper/foo-session.git', :tag => "#{s.version}"}
    s.authors = { 'Rida Hallal' => 'rida.hallal@foo-solutions.com' }
    s.ios.deployment_target = '15.0'
    s.summary = 'FOO Session'
    s.homepage = 'http://foo.mobi'
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', }
    s.default_subspecs = ['Framework']
    s.subspec 'Framework' do |f|
        f.dependency 'FooFrameworkSafeFramework'
        f.dependency 'FooKeychainManagerFramework'
        f.dependency 'FooAuthenticationManagerFramework'
        f.vendored_frameworks = 'xcframework/FooSession.xcframework'
    end
end