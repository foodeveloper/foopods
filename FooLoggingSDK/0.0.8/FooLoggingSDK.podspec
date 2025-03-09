Pod::Spec.new do |s|
  
  s.name = 'FooLoggingSDK'
  s.version = '0.0.8'
  s.source = { :git => 'git@github.com:foodeveloper/foo-logging-sdk.git', :tag => "#{s.version}" }
  
  s.authors = {  "EEK"   => "elie.elkoreh@foo.mobi" }
  
  s.swift_version = '0.0.8'
  s.ios.deployment_target = '15.0'
  
  s.summary = "Foo Logging SDK"
  s.homepage = "http://foo.mobi"
  
  s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }

  s.default_subspecs = 'Framework'
  s.swift_versions = '5.0'

  s.subspec 'Framework' do |f|
      f.vendored_frameworks = 'xcframework/FooLoggingSDK.xcframework'
    end
end




