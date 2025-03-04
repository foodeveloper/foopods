Pod::Spec.new do |s|
    s.name = 'FooUserAuthFramework'
    s.version = '1.0.82'
    s.summary = "Foo User Auth"
   
    s.homepage = "http://foo.mobi"
    s.authors = {  "Ali H"   => "ali.hassoun@foo-solutions.com", "Xing"   => "charbel.hassrouny@foo-solutions.com", "Sami"   => "sami.sharafeddine@foo-solutions.com" }
   
    s.ios.deployment_target = "15.0"
    s.source = { :git => "git@github.com:foodeveloper/foo-user-authentication.git", :tag => "#{s.version}"}
    s.frameworks = ["CoreTelephony", "SystemConfiguration", "UserNotifications", "WebKit", "LocalAuthentication"]
   
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
   
    s.swift_versions = '5.0'
    s.default_subspecs = 'Framework'
    s.static_framework = true

    s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooUserAuth.xcframework'
        f.dependency "FooRequesterWrapperFramework"
    end
end
