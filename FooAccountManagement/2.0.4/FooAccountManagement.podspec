Pod::Spec.new do |s|
    s.name = 'FooAccountManagement'
    s.version = '2.0.4'
    s.summary = "Foo Account Management"

    s.homepage = "http://foo.mobi"
    s.authors = {  "Ali H"   => "ali.hassoun@foo-solutions.com", "Xing"   => "charbel.hassrouny@foo-solutions.com"  }
    s.ios.deployment_target = "15.0"
  
    s.source = { :git => 'git@github.com:foodeveloper/foo-account-management.git', :tag => "#{s.version}" }
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
  
    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'

      s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooAccountManagement.xcframework'
        f.dependency 'FooDFCore'
    end
  end
