Pod::Spec.new do |s|

    s.name = 'FooDigitalBankCore'
    s.version = '1.0.1'
    s.summary = "FooDigitalBankCore Product"
   
    s.homepage = "http://foo.mobi"
    s.authors = {  "EEK"   => "elie.elkoreh@foo-solutions.com"}
    s.ios.deployment_target = "15.0"

    s.source = { :git => 'git@github.com:foodeveloper/foo-yeepal-digital-bank-core.git', :tag => "#{s.version}" }
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }

    s.swift_versions = '5.0'
    s.default_subspecs = 'Framework'

    s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooDigitalBankCore.xcframework'
        f.dependency 'FooRequesterWrapper'
    end
  end
