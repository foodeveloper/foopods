Pod::Spec.new do |s|
    s.name = "FooYeepalCoreUIFramework"
    s.version = "1.0.291"
    s.summary = "Foo Yeepal Core UI"
    s.homepage = "http://foo.mobi"
    s.authors = {"Mireille"   => "mireille.khalifeh@foo-solutions.com", "Taghrid"   => "taghrid.yaghi@foo-solutions.com",
    "Ali H"   => "ali.hassoun@foo-solutions.com", "Xing"   => "charbel.hassrouny@foo-solutions.com"}
    s.ios.deployment_target = "15.0"
    s.source = { :git => "git@github.com:foodeveloper/foo-yeepal-2.0-core-ui.git", :tag => "#{s.version}"}
    s.frameworks = ["CoreTelephony", "SystemConfiguration", "UserNotifications", "WebKit", "UIKit", "LocalAuthentication"]
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'
    s.static_framework = true
   
   s.subspec 'Framework' do |f|
    f.dependency 'FooFrameworkMediaFramework'
    f.dependency "FooAccountManagementFramework"
    f.dependency "FooCountriesFramework"
    f.dependency "FooWebFormsNavigationFramework"
    f.dependency "FrmBiometricAuthenticationFramework"
    f.dependency 'FooUserAuthFramework'
    f.dependency 'PhoneNumberKit', '3.8.0'
    f.dependency 'ReachabilitySwift'
    f.vendored_frameworks = 'xcframework/FooYeepalCoreUI.xcframework',
                            'frmLoggingSDKXCFramework/FRMLoggingSDK.xcframework'
   end
end
