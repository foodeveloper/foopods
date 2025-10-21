Pod::Spec.new do |s|
    s.name = 'YeepalAppleWalletExtensionService'
    s.version = '1.0.3'
    s.summary = "Foo YeepalAppleWalletExtensionServiceFramework"
   
    s.homepage = "http://foo.mobi"
    s.authors = { "Sami" => "sami.sharaf@foo.mobi" }
    s.ios.deployment_target = "15.0"

    s.source = { :git => 'git@github.com:foodeveloper/apple-wallet-extension-service.git', :tag => "#{s.version}" }
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }

    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'

     s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'YeepalAppleWalletService/YeepalAppleWalletExtensionService.xcframework'
        f.dependency "YeepalProductServicesInterfacesExtension"
        f.dependency "FooAppleWallet"
    end
end
