Pod::Spec.new do |s|
    s.name = 'FooCaaSSdk'
    s.version = '0.0.1'
    s.summary = "Foo CaaS SDK"

    s.homepage = "http://foo.mobi"
    s.authors = { "Abbas"   => "abbas.kassab@foo.mobi" }
    s.ios.deployment_target = "15.0"
  
    s.source = { :git => 'git@github.com:foodeveloper/foo-caas-sdk.git', :tag => "#{s.version}" }
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
  
    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'

      s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooCaaSSdk.xcframework'
        f.dependency 'FrmKeychain'
        f.dependency 'FooAccountManagement'
    end
  end
