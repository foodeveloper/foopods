Pod::Spec.new do |s|
  s.name = 'FooUqudoScannerWrapper'
  s.version = '3.1.12'
  s.summary = "Foo Idv UI"
  
  s.homepage = "http://foo.mobi"
  s.authors = { "Zaher H"   => "zaher.haidar@foo.mobi"}
  s.ios.deployment_target = "15.0"
  
  s.source = { :git => 'git@github.com:foodeveloper/FooUqudoScannerWrapper.git', :tag => "#{s.version}" }
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  
  s.swift_versions = '5.0'
  s.default_subspecs = 'Framework'

 s.subspec 'Framework' do |f|
    f.dependency "UqudoSDK"
    f.dependency "FooIdvCore"
    f.dependency "FooIdvCommonUI"
    f.dependency "OpenSSL-Universal", '1.1.2301'
    f.vendored_frameworks = 'xcframework/FooUqudoScannerWrapper.xcframework'
 end
end
