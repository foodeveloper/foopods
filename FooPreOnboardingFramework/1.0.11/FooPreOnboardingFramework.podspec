Pod::Spec.new do |s|
    s.name = "FooPreOnboardingFramework"
    s.version = "1.0.11"
    s.summary = "Foo PreOnboarding"

    s.homepage = "http://foo.mobi"
    s.authors = {  "Ali H"   => "ali.hassoun@foo-solutions.com", "Xing"   => "charbel.hassrouny@foo-solutions.com"  }
    s.ios.deployment_target = "15.0"
   
    s.source = { :git => "git@github.com:foodeveloper/foo-pre-onboarding.git", :tag => "#{s.version}"}
    s.frameworks = ["CoreTelephony", "SystemConfiguration", "UserNotifications", "WebKit", "LocalAuthentication"]
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
   
    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'
    s.static_framework = true

    s.subspec 'Framework' do |d|
        d.vendored_frameworks = 'xcframework/FooPreOnboarding.xcframework'
        d.dependency 'FooRequesterWrapperFramework'
    end
end
