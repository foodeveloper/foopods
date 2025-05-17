Pod::Spec.new do |s|
   
    s.name = 'FooUAEPass'
    s.version = '2.0.0'
    s.summary = "Foo UAE Pass"
    
    s.homepage = "http://foo.mobi"
    s.authors = {  "Abbas K"   => "abbas.kassab@foo.mobi" }    
    s.ios.deployment_target = "15.0"
    
    s.source = { :git => 'git@github.com:foodeveloper/foo-uae-pass.git', :tag => "#{s.version}" }
    
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
    
    s.swift_versions = '5.0'
    s.default_subspecs = 'Framework'
   
    s.subspec 'Framework' do |d|
      d.vendored_frameworks = 'xcframework/FooUAEPass.xcframework'
      d.dependency "FooUaePassManager"
      d.dependency "FooYeepalCoreUI"
    end

end
