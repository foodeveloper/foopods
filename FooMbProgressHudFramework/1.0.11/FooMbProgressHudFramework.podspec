Pod::Spec.new do |s|
    s.name         = "FooMbProgressHudFramework"
    s.version      = "1.0.11"
    s.source = { :git => "git@github.com:foodeveloper/foo-mbprogresshud.git", :tag => "#{s.version}"}
    s.ios.deployment_target = "15.0"
    s.authors = {  "Sq"   => "samer.marrash@foo-solutions.com"}
    s.summary      = "FOO MbProgressHud Wrapper"
    s.homepage     = "http://foo.mobi"
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
    s.default_subspecs = 'Framework'
    
    s.subspec 'Framework' do |f|
        f.dependency "FooLoaderManagerFramework"
        f.dependency "MBProgressHUD"
        f.vendored_frameworks = 'xcframework/FooMbProgressHud.xcframework'
    end
end
