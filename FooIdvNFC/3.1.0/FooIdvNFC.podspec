Pod::Spec.new do |s|
  s.name = 'FooIdvNFC'
  s.version = '3.1.0'
  s.source = { :git => 'git@github.com:foodeveloper/FooIdvNFC.git', :tag => "#{s.version}" }
  s.authors            = {  "Xing" => "charbel.hassrouny@foo-solutions.com" }
  s.ios.deployment_target = "15.0"
  s.summary      = "Foo Idv NFC"
  s.homepage     = "http://foo.mobi"
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_versions = '5.0'
  s.default_subspecs = 'Framework'

 s.subspec 'Framework' do |f|
    f.dependency "FooNFCPassportReader", '2.1.2.2'
    f.dependency "FooTDParser", '1.0.17'
    f.dependency "FooIdvCommonUI", '3.1.0'
    f.vendored_frameworks = 'xcframework/FooIdvNFC.xcframework'
 end
end
