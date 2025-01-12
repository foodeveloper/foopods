Pod::Spec.new do |s|
   
    s.name = "FooUAEPassFramework"
    s.version = "1.0.1"
    s.summary = "Foo UAE Pass"
    
    s.homepage = "http://foo.mobi"
    s.authors = {  "Abbas K"   => "abbas.kassab@foo.mobi" }    
    s.ios.deployment_target = "15.0"
    
    s.source = { :git => "git@github.com:foodeveloper/foo-uae-pass.git", :tag => "#{s.version}"}
    s.frameworks = ["UIKit"]
    
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
    
    s.swift_versions = '5.0'
    s.default_subspecs = 'Framework'
    s.static_framework = true
   
    s.subspec 'Framework' do |d|
      d.vendored_frameworks = 'xcframework/FooUAEPass.xcframework'
      d.dependency "FooUaePassManagerFramework"
      d.dependency "FooYeepalCoreUIFramework"
    end

end
