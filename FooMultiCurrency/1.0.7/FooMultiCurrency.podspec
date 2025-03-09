Pod::Spec.new do |s|

    s.name = 'FooMultiCurrency'
    s.version = '1.0.7'
    s.summary = "Foo Multi Currency"
   
    s.homepage = "http://foo.mobi"
    s.authors = {  "Ali H"   => "ali.hassoun@foo-solutions.com", "Xing"   => "charbel.hassrouny@foo-solutions.com"  }   
    s.ios.deployment_target = "15.0"
   
    s.source = { :git => 'git@github.com:foodeveloper/foo-multi-currency.git', :tag => "#{s.version}" }
       
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
   
    s.swift_versions = '5.0'
    s.default_subspecs = 'Framework'

    s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooMultiCurrency.xcframework'
        f.dependency 'FooRequesterWrapper'
    end
end
