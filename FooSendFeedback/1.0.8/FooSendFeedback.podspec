Pod::Spec.new do |s|

    s.name = 'FooSendFeedback'
    s.version = '1.0.8'
    s.summary = "Foo Send Feedback"

    s.homepage = "http://foo.mobi"
    s.authors = {  "Ali H"   => "ali.hassoun@foo-solutions.com", "Xing"   => "charbel.hassrouny@foo-solutions.com"  }
    s.ios.deployment_target = "15.0"
    
    s.source = { :git => 'git@github.com:foodeveloper/foo-send-feedback.git', :tag => "#{s.version}" }
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
    
    s.swift_versions = '5.0'
    s.default_subspecs = 'Framework'

 
     s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooSendFeedback.xcframework'
        f.dependency "FooDFCore"
    end
end
