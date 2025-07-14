Pod::Spec.new do |s|
    s.name = 'FooYeepalScanToPay'
    s.version = '2.0.9-ompay'
    s.summary = "Foo Yeepal Scan To Pay Framework"
  
    s.homepage = "http://foo.mobi"
    s.authors = { "Abbas Kassabb"   => "abbas.kassab@foo.mobi"}
    s.ios.deployment_target = "15.0"

    s.source = { :git => 'git@github.com:foodeveloper/foo-yeepal-2.0-scan-to-pay.git', :tag => "#{s.version}" }
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }

    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'

    s.subspec 'Framework' do |f|
       f.vendored_frameworks = 'xcframework/FooYeepalScanToPay.xcframework'
       f.dependency 'FooMasterPassQR'
       f.dependency 'FooYeepalP2PUI'
  end
end
