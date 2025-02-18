Pod::Spec.new do |s|
    s.name = "YeepalProductServicesInterfacesFramework"
    s.version = "1.0.2"
    s.summary = "Foo YeepalProductServicesInterfacesFramework"
   
    s.homepage = "http://foo.mobi"
    s.authors = { "Sami" => "sami.sharaf@foo.mobi" }
    s.ios.deployment_target = "15.0"

    s.source = { :git => "git@github.com:foodeveloper/yeepal-product-services.git", :tag => "#{s.version}-#{s.name}", :submodules => true }
    s.frameworks = ["CoreTelephony", "SystemConfiguration", "UserNotifications", "WebKit", "LocalAuthentication"]
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }

    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'
    s.static_framework = true

     s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'YeepalProductServicesInterfaces/YeepalProductServicesInterfaces.xcframework'
        f.dependency "FooDFCoreFramework"
    end

end
