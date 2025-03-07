Pod::Spec.new do |s|
    s.name = 'FooUser'
    s.version = '1.0.12'
    s.source = { :git => 'git@github.com:foodeveloper/foo-user.git', :tag => "#{s.version}" }
    s.authors = { 'Rida Hallal' => 'rida.hallal@foo-solutions.com' }
    s.ios.deployment_target = '15.0'
    s.summary = 'FOO User'
    s.homepage = 'http://foo.mobi'
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
    s.default_subspecs = ['Framework']
    s.subspec 'Framework' do |f|
        f.dependency 'FooAuthenticationManager'
        f.dependency 'FooFrameworkEncryption'
        f.dependency 'FooFileManager'
        f.dependency 'FooStringUtility'
        f.vendored_frameworks = 'xcframework/FooUser.xcframework'
    end
end
