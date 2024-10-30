Pod::Spec.new do |s|
    s.name = 'FooFileManagerFramework'
    s.version = '1.0.4'
    s.source = { :git => 'git@github.com:foodeveloper/foo-file-manager.git', :tag => "#{s.version}"}
    s.authors = { 'Rida Hallal' => 'rida.hallal@foo-solutions.com' }
    s.ios.deployment_target = '15.0'
    s.summary = 'FOO File Manager'
    s.homepage = 'http://foo.mobi'
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
    s.default_subspecs = ['Framework']
    s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooFileManager.xcframework'
    end
    
end
