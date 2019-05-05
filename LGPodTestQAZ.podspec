
Pod::Spec.new do |s|
  s.name             = 'LGPodTestQAZ'
  s.version          = '0.1.0'
  s.summary          = 'LGPodTestQAZ CeShi Use'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/lipopli/LGPodTestQAZ.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '381216970@qq.com' => '11744651110@qq.com' }
  s.source           = { :git => 'https://github.com/lipopli/LGPodTestQAZ.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'LGPodTestQAZ/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LGPodTestQAZ' => ['LGPodTestQAZ/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
