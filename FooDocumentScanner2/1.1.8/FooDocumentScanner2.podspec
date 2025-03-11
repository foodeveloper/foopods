Pod::Spec.new do |s|
  s.name = 'FooDocumentScanner2'
  s.version = '1.1.8'
  s.summary = "Foo Document Scanner"
  s.homepage = "http://foo.mobi"
  s.authors = {
    "Zaher H" => "zaher.haidar@foo-solutions.com",
    "Xing" => "charbel.hassrouny@foo-solutions.com"
  }
  s.ios.deployment_target = "15.0"
  s.source = { :git => 'git@github.com:foodeveloper/Foo-Document-Scanner-2.git', :tag => "#{s.version}" }
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.swift_versions = '5.0'
  s.default_subspecs = 'Framework'
  s.static_framework = true
  
  s.subspec 'Framework' do |d|
    d.dependency "FooTDParser", "1.0.17"
    d.dependency "GoogleMLKit/TextRecognition"
    d.dependency "GoogleMLKit/BarcodeScanning"
    d.dependency "FooOpenCV2"
    d.vendored_frameworks = 'xcframework/FooDocumentScanner2.xcframework'
  end
end
