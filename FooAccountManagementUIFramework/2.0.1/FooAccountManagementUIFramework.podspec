Pod::Spec.new do |s|
    s.name = "FooAccountManagementUIFramework"
    s.version = "2.0.1"
    s.summary = "Foo Account Management UI"
    
    s.homepage = "http://foo.mobi"
    s.authors = {"Abbas K"   => "abbas.kassab@foo.mobi", "Ali H"   => "ali.hassoun@foo-solutions.com", "Xing"   => "charbel.hassrouny@foo-solutions.com"}
    s.ios.deployment_target = "15.0"

    s.source = { :git => "git@github.com:foodeveloper/foo-account-management-ui.git", :tag => "#{s.version}"}
    s.frameworks = ["UIKit"]
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }

    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'
    s.static_framework = true


     s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooAccountManagementUI.xcframework'
        f.dependency "FooYeepalCoreUIFramework"
        f.dependency "FooPaymentManagementFramework"
    end

end