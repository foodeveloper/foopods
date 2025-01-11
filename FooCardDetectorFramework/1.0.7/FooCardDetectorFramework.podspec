Pod::Spec.new do |s|
    s.name = "FooCardDetectorFramework"
    s.version = "1.0.7"
    s.summary = "Foo Card Detector"
   
    s.homepage = "http://foo.mobi"
    s.authors = {"Ali H"   => "ali.hassoun@foo-solutions.com", "Xing"   => "charbel.hassrouny@foo-solutions.com"}
    s.ios.deployment_target = "15.0"

    s.source = { :git => "git@github.com:foodeveloper/foo-card-detector.git", :tag => "#{s.version}"}
    s.frameworks = ["CoreTelephony", "SystemConfiguration", "UserNotifications", "WebKit", "UIKit", "LocalAuthentication"]
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }

    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'
    s.static_framework = true

    s.subspec 'Framework' do |f|
     f.vendored_frameworks = 'xcframework/FooCardDetector.xcframework'
     f.dependency "GoogleMLKit/TextRecognition"
     f.pod_target_xcconfig = {'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  end

end
