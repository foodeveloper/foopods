Pod::Spec.new do |s|
    s.name = 'FooYeepalCoreUI'
    s.version = '2.0.33.3-ompay'
    s.summary = "Foo Yeepal Core UI"

    s.homepage = "http://foo.mobi"
    s.authors = {"Mireille"   => "mireille.khalifeh@foo-solutions.com", "Taghrid"   => "taghrid.yaghi@foo-solutions.com",
    "Ali H"   => "ali.hassoun@foo-solutions.com", "Xing"   => "charbel.hassrouny@foo-solutions.com"}
    s.ios.deployment_target = "15.0"

    s.source = { :git => 'git@github.com:foodeveloper/foo-yeepal-2.0-core-ui.git', :tag => "#{s.version}" }
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'

   s.subspec 'Framework' do |f|
    f.dependency 'FooFrameworkMedia'
    f.dependency 'FooAccountManagement'
    f.dependency 'FooCountries'
    f.dependency "FooWebFormsNavigation"
    f.dependency "FrmBiometricAuthentication"
    f.dependency 'FooUserAuth'
    f.dependency 'FooUI'
    f.dependency 'PhoneNumberKit', '3.8.0'
    f.dependency 'ReachabilitySwift'
    f.dependency 'FRMLoggingSDK'
    f.vendored_frameworks = 'xcframework/FooYeepalCoreUI.xcframework'
   end
end
