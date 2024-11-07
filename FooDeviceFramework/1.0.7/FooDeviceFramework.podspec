Pod::Spec.new do |s|
    s.name = 'FooDeviceFramework'
    s.version = '1.0.7'
    s.source = { :git => 'git@github.com:foodeveloper/foo-device.git', :tag => "#{s.version}"}
    s.authors = { 'Rida Hallal' => 'rida.hallal@foo-solutions.com' }
    s.ios.deployment_target = '15.0'
    s.summary = 'FOO Device'
    s.homepage = 'http://foo.mobi'
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
    s.default_subspecs = ['Framework']
    s.subspec 'Framework' do |f|
        f.dependency 'FooStringUtilityFramework'
        f.dependency 'FooFrameworkSafeFramework'
        f.dependency 'FooKeychainManagerFramework'
        f.dependency 'FooAuthenticationManagerFramework'
        f.vendored_frameworks = 'xcframework/FooDevice.xcframework'
    end
end
