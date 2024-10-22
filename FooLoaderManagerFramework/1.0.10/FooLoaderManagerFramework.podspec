Pod::Spec.new do |s|
    s.name         = "FooLoaderManagerFramework"
    s.version      = "1.0.10"
    s.source = { :git => "git@github.com:foodeveloper/foo-loader-manager.git", :tag => "#{s.version}"}
    s.authors = {  "Sq" => "samer.marrash@foo-solutions.com"}
    s.ios.deployment_target = "15.0"
    s.summary      = "FOO Loader Manager"
    s.homepage     = "http://foo.mobi"
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES'  }
    s.default_subspecs = 'Framework'
    
    s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooLoaderManager.xcframework'
    end
end
