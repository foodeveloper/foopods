Pod::Spec.new do |s|
    s.name = "FooYeepalScanToPayFramework"
    s.version = "2.0.2"
    s.summary = "Foo Yeepal Scan To Pay"
  
    s.homepage = "http://foo.mobi"
    s.authors = { "Abbas Kassabb"   => "abbas.kassab@foo.mobi"}
    s.ios.deployment_target = "15.0"

    s.source = { :git => "git@github.com:foodeveloper/foo-yeepal-2.0-scan-to-pay.git", :tag => "#{s.version}"}
    s.frameworks = ["UIKit"]
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }

    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'
    s.static_framework = true

    s.subspec 'Framework' do |f|
       f.vendored_frameworks = "xcframework/FooYeepalScanToPay.xcframework"
       f.dependency 'FooMasterPassQRFramework'
       f.dependency 'FooYeepalP2PUIFramework'

       f.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    }
  end
end
