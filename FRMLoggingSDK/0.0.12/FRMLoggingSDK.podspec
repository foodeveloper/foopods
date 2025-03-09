Pod::Spec.new do |s|
  
  s.name = 'FRMLoggingSDK'
  s.version = '0.0.12'
  s.source = { :git => 'git@github.com:foodeveloper/frm-logging.git', :tag => "#{s.version}" }
  
  s.authors = {  "EEK"   => "elie.elkoreh@foo.mobi" }
  
  s.ios.deployment_target = '15.0'
  s.summary = "Foo Logging SDK"
  s.homepage = "http://foo.mobi"
  
  s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }

  s.swift_versions = '5.0'
  s.default_subspecs = 'Framework'

  s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FRMLoggingSDK.xcframework'
    end
end





