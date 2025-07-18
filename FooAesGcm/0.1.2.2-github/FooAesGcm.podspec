Pod::Spec.new do |s|
    s.name = 'FooAesGcm'
    s.version = '0.1.2.2-github'
    s.source = { :git => 'git@github.com:foodeveloper/foo-aesgcm.git', :tag => "#{s.version}" }
    s.authors = { 'Rida Hallal' => 'rida.hallal@foo-solutions.com' }
    s.ios.deployment_target = '15.0'
    s.summary = 'FOO AesGcm'
    s.homepage = 'http://foo.mobi'
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
    s.default_subspecs = ['Framework']
    s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooAesGcm.xcframework'
    end
end
