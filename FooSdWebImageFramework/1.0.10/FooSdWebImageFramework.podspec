Pod::Spec.new do |s|
    s.name         = "FooSdWebImageFramework"
    s.version      = "1.0.10"
    s.source = { :git => "git@github.com:foodeveloper/foo-sdwebimage.git", :tag => "#{s.version}"}
    s.authors = { "Sq"   => "samer.marrash@foo-solutions.com", "Xing" => "charbel.hassrouny@foo-solutions.com"}
    s.ios.deployment_target = "15.0"
    s.summary      = "FOO SDWebImage"
    s.homepage     = "http://foo.mobi"
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
    s.default_subspecs = 'Framework'
    
    s.subspec 'Framework' do |f|
        f.dependency "FooMediaManagerFramework"
        f.dependency "SDWebImage"
        f.vendored_frameworks = 'xcframework/FooSdWebImage.xcframework'
    end
end
