Pod::Spec.new do |s|
  s.name = 'FooIdvCore'
  s.version = '3.1.0'
  s.source = { :git => 'git@github.com:foodeveloper/FooIdvCore.git', :tag => "#{s.version}" }
  s.authors = { "Zaher H"   => "zaher.haidar@foo.mobi"}
  s.ios.deployment_target = "15.0"
  s.summary      = "Foo Idv Core"
  s.homepage     = "http://foo.mobi"
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_versions = '5.0'
  s.default_subspecs = 'Framework'

 s.subspec 'Framework' do |f|
    f.dependency "FRMLoggingSDK", '0.0.15'
    f.dependency "FooIdvCommonCore", '3.1.0'
    f.vendored_frameworks = 'xcframework/FooIdvCore.xcframework'
 end
end
