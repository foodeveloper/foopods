Pod::Spec.new do |s|

    s.name = 'FooCountries'
    s.version = '0.0.11-jenkins.12'
    s.summary = "Foo Countries SDK"
   
    s.homepage = "http://foo.mobi"
    s.authors = {  "EEK"   => "elie.elkoreh@foo.mobi"}

    s.ios.deployment_target = "15.0"
    s.source = { :git => 'git@github.com:foodeveloper/foo-countries-sdk.git', :tag => "#{s.version}" }
    
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
    s.swift_versions = '5.0'

    s.default_subspecs = 'Framework'

    s.subspec 'Framework' do |f|
     f.vendored_frameworks = 'xcframework/FooCountries.xcframework'
  end
end
