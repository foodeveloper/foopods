Pod::Spec.new do |s|
  s.name = 'FooIdvCommonUI'
  s.version = '3.1.0'
  s.source = { :git => 'git@github.com:foodeveloper/FooIdvCommonUI.git', :tag => "#{s.version}" }
  s.authors = { "Zaher H"   => "zaher.haidar@foo.mobi"}
  s.ios.deployment_target = "15.0"
  s.summary      = "Foo Idv Common UI"
  s.homepage     = "http://foo.mobi"
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_versions = '5.0'
  s.default_subspecs = 'Framework'

  s.subspec 'Framework' do |f|
     f.dependency "FooUI", '1.0.6'
     f.dependency "FRMLoggingSDK", '0.0.15'
     f.dependency "FooMbProgressHud", '1.0.12'
     f.dependency "FooIdvCommonCore", '3.1.0'
     f.dependency "FooSdWebImage", '1.0.11'
     f.vendored_frameworks = 'xcframework/FooIdvCommonUI.xcframework'
  end
end
