Pod::Spec.new do |s|

    s.name = 'FooPaymentManagement'
    s.version = '1.0.49'
    s.summary = "Foo Payment Management"

    s.homepage = "http://foo.mobi"
    s.authors = {  "Ali H"   => "ali.hassoun@foo-solutions.com", "Xing"   => "charbel.hassrouny@foo-solutions.com"  }
    s.ios.deployment_target = "15.0"

    s.source = { :git => 'git@github.com:foodeveloper/foo-payment-management.git', :tag => "#{s.version}" }
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }

    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'
    
     s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooPaymentManagement.xcframework'
        f.dependency 'FooAccountManagement'
    end
  end
