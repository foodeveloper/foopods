Pod::Spec.new do |s|
    s.name = "FooFAQFramework"
    s.version = "1.0.9"
    s.summary = "Foo FAQ"

    s.homepage = "http://foo.mobi"
    s.authors = {  "Zaher H"   => "zaher.haidar@foo-solutions.com", "Ali H"   => "ali.hassoun@foo-solutions.com", "Xing"   => "charbel.hassrouny@foo-solutions.com"  }
    s.ios.deployment_target = "15.0"

    s.source = { :git => "git@github.com:foodeveloper/foo-faq.git", :tag => "#{s.version}"}
    s.frameworks = ["CoreTelephony", "SystemConfiguration", "UserNotifications", "WebKit", "LocalAuthentication"]
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
    
    s.swift_versions = '5.0'
    s.default_subspecs = 'Framework'
    s.static_framework = true

    s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooFAQ.xcframework'
        f.dependency "FooDFCoreFramework"
    end
  end
