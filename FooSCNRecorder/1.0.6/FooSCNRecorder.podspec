
Pod::Spec.new do |s|

    s.name = 'FooSCNRecorder'
    s.version = '1.0.6'
    s.summary = "Foo SCN Recorder"
    s.homepage = "http://foo.mobi"
    s.authors = {  "Zaher H"   => "zaher.haidar@foo-solutions.com","Xing"   => "charbel.hassrouny@foo-solutions.com"  }
    s.platform = :ios, "15.0"
    s.ios.deployment_target = "15.0"
    s.source = { :git => 'git@github.com:foodeveloper/foo-scene-recorder.git', :tag => "#{s.version}" }
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
    s.swift_versions = '5.0'
    s.default_subspecs = 'Framework'

    s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooSCNRecorder.xcframework'
    end

  end
