Pod::Spec.new do |s|
  s.name = 'FooIdVerificationNFC'
  s.version = '1.0.18'
  s.summary      = "FOO ID Verification NFC"
  s.description  = <<-DESC
                    Swift IDVerification
                   DESC
  s.homepage     = "http://foo.mobi"
  s.authors            = {  "Xing" => "charbel.hassrouny@foo-solutions.com"}
  s.platform     = :ios, "15.0"
  s.ios.deployment_target = "15.0"
  s.source = { :git => 'git@github.com:foodeveloper/Foo-Id-Verification-Nfc.git', :tag => "#{s.version}" }
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'DEFINES_MODULE' => 'YES'
  }
  s.swift_versions = '5.0'
  s.default_subspecs = 'Framework'
  s.static_framework = true

  # ――― Subspecs ――― #
   s.subspec 'Framework' do |d|
        d.dependency "FooIdVerificationUI"
        d.dependency "FooNFCPassportReader"
        d.vendored_frameworks = 'xcframework/FooIdVerificationNFC.xcframework'
   end
end
