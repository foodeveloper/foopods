Pod::Spec.new do |s|
    
    s.name         = "FooUaePassManagerFramework"
    s.version      = '1.0.3'
    s.source = { :git => 'git@github.com:foodeveloper/uae-pass-manager.git', :tag => "#{s.version}"}
    
    s.ios.deployment_target = "15.0"
    s.authors = {  "Vanessa El Khoury" => "vanessa.elkhoury@foo-solutions.com"}
    
    s.summary      = "FOO Uae Pass Manager"
    s.homepage     = "http://foo.mobi"
    s.license      = "MIT"
    
    s.frameworks = ["Foundation", "UIKit"]
    s.static_framework = true

    s.pod_target_xcconfig = {
        'DEFINES_MODULE' => 'YES'
    }
    
    s.default_subspec = 'Framework'

    s.subspec 'Framework' do |f|
       f.vendored_frameworks  = 'xcframework/FooUaePassManager.xcframework'
    end
    
end
