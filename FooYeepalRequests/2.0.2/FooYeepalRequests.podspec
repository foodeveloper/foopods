Pod::Spec.new do |s|

    s.name = 'FooYeepalRequests'
    s.version = '2.0.2'
    s.summary = "Foo Yeepal Requests"
   
    s.homepage = "http://foo.mobi"
    s.authors = {  "EEK"   => "elie.elkoreh@foo.mobi"}
    s.ios.deployment_target = "15.0"
    
    s.source = { :git => 'git@github.com:foodeveloper/foo-yeepal-requests.git', :tag => "#{s.version}" }
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
  
    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'


     s.subspec 'Framework' do |d|
        d.vendored_frameworks = 'xcframework/FooYeepalRequests.xcframework'
        d.dependency "FooDFCore"
    end
  end
