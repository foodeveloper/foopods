Pod::Spec.new do |s|
    
    s.name              = "FooMpqrScannerFramework"
    s.version           = "1.0.0"
    s.source            = { :git => "git@github.com:foodeveloper/Foo-Mpqr-Scanner.git", :tag => "#{s.version}"}

    s.authors           = { "Zaher" => "zaher.haidar@foo-solutions.com" }
    s.platform          = :ios, "11.0"
    s.ios.deployment_target = "11.0"
    
    s.summary           = "Foo Mpqr Scanner"
    s.homepage          = "http://foo.mobi"
    s.license           = "MIT"
    
    s.frameworks = []
    
    s.default_subspecs = 'Framework'
    
    s.subspec 'Framework' do |f|
        f.ios.vendored_frameworks = 'FooMpqrScanner.framework'
        
        f.pod_target_xcconfig = {
            'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
        }

        f.user_target_xcconfig = {
            'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
        }
    end
end

