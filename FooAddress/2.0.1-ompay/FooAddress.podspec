Pod::Spec.new do |s|
    s.name = 'FooAddress'
    s.version = '2.0.1-ompay'
    s.summary = "Foo Address Core"
   
    s.homepage = "http://foo.mobi"
    s.authors = {  "EEK"   => "elie.elkoreh@foo.mobi", "Salah El Sayed" => "salah.elsayed@foo.mobi" }
    s.ios.deployment_target = "15.0"

    s.source = { :git => 'git@github.com:foodeveloper/foo-address.git', :tag => "#{s.version}" }
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }

    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'

    s.subspec 'Framework' do |d|
        d.vendored_frameworks = 'xcframework/FooAddress.xcframework'
        d.dependency "FooYeepalCoreUI"
    end
end
