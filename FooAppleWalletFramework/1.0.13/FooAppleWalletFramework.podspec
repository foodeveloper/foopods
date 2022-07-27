Pod::Spec.new do |s|

    s.name = "FooAppleWalletFramework"
    s.version = "1.0.13"
    s.source = { :git => "git@github.com:foodeveloper/foo-apple-pay.git", :tag => "#{s.version}"}

    s.authors = {  "Xing"   => "charbel.hassrouny@foo-solutions.com", "Sq" => "samer.marrash@foo-solutions.com", "Sami" => "sami.sharaf@foo-solutions.com"}
    s.platform = :ios, "11.0"
    s.ios.deployment_target = "11.0"

    s.summary = "Foo Apple Wallet"
    s.homepage = "http://foo.mobi"
    s.license= "MIT"

    s.frameworks = ["PassKit"]

    s.default_subspecs = 'Framework'

    s.subspec 'Framework' do |f|
        f.ios.vendored_frameworks = 'FooAppleWallet.framework'

        f.pod_target_xcconfig = {
            'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
        }

        f.user_target_xcconfig = {
            'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
        }
    end
end
