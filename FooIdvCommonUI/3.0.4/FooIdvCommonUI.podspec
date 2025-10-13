Pod::Spec.new do |s|
  s.name = 'FooIdvCommonUI'
  s.version = '3.0.4'
  s.source = { :git => 'git@github.com:foodeveloper/FooIdvCommonUI.git', :tag => "#{s.version}" }
  s.authors = { "Zaher H"   => "zaher.haidar@foo.mobi"}
  s.ios.deployment_target = "15.0"
  s.summary      = "Foo Idv Common UI"
  s.homepage     = "http://foo.mobi"
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_versions = '5.0'
  s.default_subspecs = 'Framework'

  s.subspec 'Framework' do |f|
     f.dependency "FooUI"
     f.dependency "FRMLoggingSDK"
     f.dependency "FooMbProgressHud"
     f.dependency "FooIdvCommonCore"
     f.dependency "FooSdWebImage"
     f.vendored_frameworks = 'xcframework/FooIdvCommonUI.xcframework'
  end
end
