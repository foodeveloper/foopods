Pod::Spec.new do |s|
    s.name         = 'FooMediaManager'
    s.version      = '1.0.9'
    s.source = { :git => 'git@github.com:foodeveloper/foo-media-manager.git', :tag => "#{s.version}" }
    s.ios.deployment_target = "15.0"
    s.authors = { "Sq" => "samer.marrash@foo-solutions.com", "Xing" => "charbel.hassrouny@foo-solutions.com"}
    s.summary      = "FOO Media Manager"
    s.homepage     = "http://foo.mobi"
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
    s.default_subspecs = 'Framework'
    s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooMediaManager.xcframework'
    end
end
