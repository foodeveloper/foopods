Pod::Spec.new do |s|
    s.name = 'YeepalProductServicesInterfacesExtension'
    s.version = '1.0.6'
    s.summary = "Foo YeepalProductServicesInterfacesExtensionFramework"
   
    s.homepage = "http://foo.mobi"
    s.authors = { "Sami" => "sami.sharaf@foo.mobi" }
    s.ios.deployment_target = "15.0"

    s.source = { :git => 'git@github.com:foodeveloper/yeepal-product-services-interfaces-extension.git', :tag => "#{s.version}" }
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }

    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'

     s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/YeepalProductServicesInterfacesExtension.xcframework'
    end

end
