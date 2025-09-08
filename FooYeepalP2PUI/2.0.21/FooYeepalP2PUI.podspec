Pod::Spec.new do |s|
    s.name = 'FooYeepalP2PUI'
    s.version = '2.0.21'
    s.summary = "Foo Yeepal P2P UI"

    s.homepage = "http://foo.mobi"
    s.authors = { "Ali H"   => "ali.hassoun@foo-solutions.com", "Xing"   => "charbel.hassrouny@foo-solutions.com"}
    s.ios.deployment_target = "15.0"

    s.source = { :git => 'git@github.com:foodeveloper/foo-yeepal-2.0-p2p-ui.git', :tag => "#{s.version}" }
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }

    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'

     s.subspec 'Framework' do |f|
       f.vendored_frameworks = 'xcframework/FooYeepalP2PUI.xcframework'
       f.dependency 'FooP2P' 
       f.dependency 'FooYeepalAddMoneyUI'
       f.dependency 'FooYeepalAliasUI'
  end
end
