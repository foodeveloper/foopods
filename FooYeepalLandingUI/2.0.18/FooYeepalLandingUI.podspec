Pod::Spec.new do |s|
    s.name = 'FooYeepalLandingUI'
    s.version = '2.0.18'
    s.summary = "Foo Yeepal Landing UI"
    s.homepage = "http://foo.mobi"
    s.authors = { "Ali H"   => "ali.hassoun@foo-solutions.com", "Xing"   => "charbel.hassrouny@foo-solutions.com"}
    s.ios.deployment_target = "15.0"

    s.source = { :git => 'git@github.com:foodeveloper/foo-yeepal-2.0-landing-ui.git', :tag => "#{s.version}" }
 
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
    
    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'
 
     s.subspec 'Framework' do |d|
        d.vendored_frameworks = 'xcframework/FooYeepalLandingUI.xcframework'
        d.dependency 'FooYeepalP2PUI'
        d.dependency 'FooUserInbox'
        d.dependency 'FooMultiCurrency'
        d.dependency 'YeepalProductServicesInterfaces'
    end
end
