Pod::Spec.new do |s|

    s.name = 'FooExplore'
    s.version = '1.0.6'
    s.summary = "Foo FooExploreFramework"
   
    s.homepage = "http://foo.mobi"
    s.authors = {  "EEK"   => "elie.elkoreh@foo-solutions.com"}
    s.ios.deployment_target = "15.0"

    s.source = { :git => 'git@github.com:foodeveloper/foo-explore.git', :tag => "#{s.version}" }
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }

    s.swift_versions = '5.0'
    s.default_subspecs = 'Framework'
    s.static_framework = true

    s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooExplore.xcframework'
        f.dependency 'FooYeepalCoreUI'
        f.dependency 'FooBranch'
        f.dependency 'GoogleMaps', '9.3.0'
    end
  end
