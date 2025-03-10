Pod::Spec.new do |s|
   
    s.name = 'FooYeepalRequestsUI'
    s.version = '1.0.6'
    s.summary = "Foo Yeepal Requests UI"
    
    s.homepage = "http://foo.mobi"
    s.authors = {  "EEK"   => "elie.elkoreh@foo.mobi" }
    
    s.ios.deployment_target = "15.0"
    s.source = { :git => 'git@github.com:foodeveloper/foo-yeepal-requests-ui.git', :tag => "#{s.version}" }

    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }

    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'

    s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooYeepalRequestsUI.xcframework'
        f.dependency "FooYeepalRequests"
        f.dependency "FooYeepalCoreUI"
    end
end
