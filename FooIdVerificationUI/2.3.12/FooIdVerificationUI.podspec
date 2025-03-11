Pod::Spec.new do |s|

  s.name = 'FooIdVerificationUI'
  #update the version also in IDVerification -> uiVersion: String
  s.version = '2.3.12'
  s.summary = 'FOO ID Verification UI'
  s.homepage = "http://foo.mobi"
  s.authors = {  "Xing" => "charbel.hassrouny@foo-solutions.com", "Sami Sharafeddine" => "sami.sharaf@foo-solutions.com"}
  s.platform = :ios, "15.0"
  s.ios.deployment_target = "15.0"
  s.source = { :git => 'git@github.com:foodeveloper/Foo-Id-Verification-UI.git', :tag => "#{s.version}" }
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.swift_versions = '5.0'
  s.default_subspecs = 'Framework'
  s.static_framework = true

  # ――― Subspecs ――― #

   s.subspec 'Framework' do |d|
       
     	d.dependency "FooIdVerification", "2.3.5"
     	d.dependency "FooFrameworkMedia"
      d.dependency "FooLivenessDetector2", "1.0.20"
      d.dependency "FooDocumentScanner2", "1.1.9"
      d.vendored_frameworks = 'xcframework/FooIdVerificationUI.xcframework'
   end
end
