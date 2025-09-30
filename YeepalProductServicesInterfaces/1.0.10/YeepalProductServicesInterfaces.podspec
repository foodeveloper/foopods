Pod::Spec.new do |s|
    s.name = 'YeepalProductServicesInterfaces'
    s.version = '1.0.10'
    s.summary = "Foo YeepalProductServicesInterfacesFramework"
   
    s.homepage = "http://foo.mobi"
    s.authors = { "Sami" => "sami.sharaf@foo.mobi" }
    s.ios.deployment_target = "15.0"

    s.source = { :git => 'git@github.com:foodeveloper/yeepal-product-services-interfaces.git', :tag => "#{s.version}" }
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }

    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'

     s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/YeepalProductServicesInterfaces.xcframework'
        f.dependency 'FooDFCore'
    end

end
