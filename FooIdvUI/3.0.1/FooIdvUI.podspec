Pod::Spec.new do |s|
  s.name = 'FooIdvUI'
  s.version = '3.0.1'
  s.source = { :git => 'git@github.com:foodeveloper/FooIdvUI.git', :tag => "#{s.version}" }
  s.authors = { "Zaher H"   => "zaher.haidar@foo.mobi"}
  s.ios.deployment_target = "15.0"
  s.summary      = "Foo Idv UI"
  s.homepage     = "http://foo.mobi"
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_versions = '5.0'
  s.default_subspecs = 'Framework'

 s.subspec 'Framework' do |f|
    f.dependency "FooIdvCommonUI"
    f.dependency "FooIdvCore"
    f.vendored_frameworks = 'xcframework/FooIdvUI.xcframework'
 end
end
