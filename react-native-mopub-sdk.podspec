require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
    s.name         = "react-native-mopub-sdk"
    s.version      = package["version"]
    s.summary      = package["description"]
    s.description  = <<-DESC
    react-native-mopub-sdk
    DESC
    s.homepage     = "https://github.com/aliasad106/React-Native-Mopub-SDK"
    s.license      = "MIT"
    # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
    s.author       = { "author" => "author@domain.cn" }
    s.platform     = :ios, "7.0"
    s.source       = { :git => "https://github.com/aliasad106/React-Native-Mopub-SDK", :tag => "#{s.version}" }
    
    s.source_files = "ios/**/*.{h,m}"
    s.requires_arc = true
    
    s.dependency "React"
    
    s.subspec "MoPub" do |ss|
        
        ss.dependency 'mopub-ios-sdk/Core', '~> 5.11.0'
        
        s.static_framework = true
    end
    
    s.subspec "AdColony" do |ss|
        
        ss.dependency 'MoPub-AdColony-Adapters', '~> 4.1.2.1'
        
    end
    

    s.subspec "AdMob" do |ss|
        
        ss.dependency 'MoPub-AdMob-Adapters', '~> 7.53.1.2'
        
    end
    
    
    s.subspec "Tapjoy" do |ss|
        
        ss.dependency 'MoPub-TapJoy-Adapters', '~> 12.4.1.0'
        
    end
    
    s.subspec "AppLovin" do |ss|
        
        ss.dependency 'MoPub-Applovin-Adapters', '~> 6.11.1.0'
        
    end
    
    s.subspec "Vungle" do |ss|
        
        ss.dependency 'MoPub-Vungle-Adapters', '~> 6.4.6.1'
        
    end
    
    #s.dependency "others"
end

