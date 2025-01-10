Pod::Spec.new do |s|

    s.name = "FooSendFeedbackFramework"
    s.version = "1.0.7"
    s.summary = "Foo Send Feedback"

    s.homepage = "http://foo.mobi"
    s.authors = {  "Ali H"   => "ali.hassoun@foo-solutions.com", "Xing"   => "charbel.hassrouny@foo-solutions.com"  }
    s.ios.deployment_target = "15.0"
    
    s.source = { :git => "git@github.com:foodeveloper/foo-send-feedback.git", :tag => "#{s.version}"}
    s.frameworks = ["CoreTelephony", "SystemConfiguration", "UserNotifications", "WebKit", "LocalAuthentication"]
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
    
    s.swift_versions = '5.0'
    s.default_subspecs = 'Framework'
    s.static_framework = true

 
     s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooSendFeedback.xcframework'
        f.dependency "FooDFCoreFramework"
    end
end
