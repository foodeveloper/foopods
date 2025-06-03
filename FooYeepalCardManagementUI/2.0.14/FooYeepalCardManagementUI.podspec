Pod::Spec.new do |s|
    s.name = 'FooYeepalCardManagementUI'
    s.version = '2.0.14'
    s.summary = "Foo Yeepal Card Management UI"
   
    s.homepage = "http://foo.mobi"
    s.authors = {"Zaher" => "zaher.haidar@foo-solutions.com", "Ali H"   => "ali.hassoun@foo-solutions.com", "Xing"   => "charbel.hassrouny@foo-solutions.com"}
    s.ios.deployment_target = "15.0"

    s.source = { :git => 'git@github.com:foodeveloper/foo-yeepal-2.0-card-management-ui.git', :tag => "#{s.version}" }
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
   
    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'
   
    s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooYeepalCardManagementUI.xcframework'
        f.dependency "FooCardControl"
        f.dependency "FooVCN"
        f.dependency "FooYeepalAddMoneyUI"
        f.dependency "FooAddress"
        f.dependency "FooBranch"
        f.dependency "FooMultiCurrency"
        f.dependency "YeepalProductServicesInterfaces"
    end
end
