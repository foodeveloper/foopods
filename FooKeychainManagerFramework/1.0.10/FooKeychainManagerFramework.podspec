Pod::Spec.new do |s|
    s.name = 'FooKeychainManagerFramework'
    s.version = '1.0.10'
    s.source = { :git => 'git@github.com:foodeveloper/foo-keychain-manager.git', :tag => "#{s.version}"}
    s.authors = { 'Rida Hallal' => 'rida.hallal@foo-solutions.com' }
    s.ios.deployment_target = '15.0'
    s.summary = 'FOO Keychain Manager'
    s.homepage = 'http://foo.mobi'
    s.frameworks = ['Foundation']
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
    s.default_subspecs = ['Framework']
    s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooKeychainManager.xcframework'
    end
end
