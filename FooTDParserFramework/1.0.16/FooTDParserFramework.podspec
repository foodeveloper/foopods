Pod::Spec.new do |s|
    s.name = "FooTDParserFramework"
    s.version = "1.0.16"
    s.source = { :git => "git@github.com:foodeveloper/foo-td-parser.git", :tag => "#{s.version}"}
    s.authors = {  "Xing"   => "charbel.hassrouny@foo-solutions.com"  }
    s.ios.deployment_target = "15.0"
    s.homepage = "http://foo.mobi"
    s.summary = "Foo TD Parser"
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
    s.swift_versions = '5.0'
    s.default_subspecs = 'Framework'
    s.subspec 'Framework' do |f|
      f.vendored_frameworks = 'xcframework/FooTDParser.xcframework'
    end
end
