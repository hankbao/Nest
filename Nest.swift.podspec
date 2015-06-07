Pod::Spec.new do |s|

  s.name         = "Nest.swift"
  s.module_name  = "Nest"
  s.version      = "0.0.3"
  s.summary      = "A library offers missing conveniences, helpers in Foundation and written in Swift."

  s.description  = <<-DESC
                   A library offers missing conveniences, helpers in Foundation and written in Swift.
				   It will be your friend.
                   DESC

  s.homepage     = "https://github.com/WeZZard/Nest"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "WeZZard" => "wezzardlau@gmail.com" }

  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"

  s.source       = { :git => "https://github.com/WeZZard/Nest.git", :tag => s.version.to_s }

  s.source_files  = "Nest", "Nest/**/*.swift"

  s.requires_arc = true

  s.dependency "SwiftExt", "~> 0.0.2"
  
end