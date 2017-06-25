Pod::Spec.new do |s|
  s.name             = 'GenericMVC'
  s.version          = '0.1.0'
  s.summary          = 'GenericMVC.'
  s.description      = <<-DESC
Sample project on how to implement generic segueable view controllers. 
                       DESC

  s.homepage         = 'https://github.com/nikita-leonov/GenericMVC'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'nikita-leonov' => 'nikita.leonov@gmail.com' }
  s.source           = { :git => 'https://github.com/nikita-leonov/GenericMVC.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/leonovco'

  s.ios.deployment_target = '8.0'

  s.source_files = 'GenericMVC/Classes/**/*'
end
