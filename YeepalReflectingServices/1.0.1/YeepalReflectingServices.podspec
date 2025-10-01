Pod::Spec.new do |s|
    s.name = 'YeepalReflectingServices'
    s.version = '1.0.1'
    s.summary = "Yeepal Reflecting Services Implementation Framework"
   
    s.homepage = "http://foo.mobi"
    s.authors = { "EEK" => "elie.elkoreh@foo.mobi" }
    s.ios.deployment_target = "15.0"

    s.source = { :git => 'git@github.com:foodeveloper/yeepal-reflecting-services.git', :tag => "#{s.version}" }
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }

    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'

     s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/YeepalReflectingServices.xcframework'
        f.dependency 'YeepalProductServicesInterfaces'
        f.dependency 'FooYeepalCoreUI'
    end
end
