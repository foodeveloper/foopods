Pod::Spec.new do |s|
  s.name         = "FooLivenessDetector2Framework"
  s.version      = "1.0.18"
  s.source = { :git => "git@github.com:foodeveloper/foo-liveness-detector-2.git", :tag => "#{s.version}"}
  s.authors            = {  "Xing" => "charbel.hassrouny@foo-solutions.com" }
  s.ios.deployment_target = "15.0"
  s.summary      = "FOO LivenessDetector 2"
  s.homepage     = "http://foo.mobi"
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_versions = '5.0'
  s.default_subspecs = 'Framework'

 s.subspec 'Framework' do |f|
        f.dependency "FooSCNRecorderFramework", "1.0.5"
        f.vendored_frameworks = 'xcframework/FooLivenessDetector2.xcframework'
    end
end
