Pod::Spec.new do |s|

# ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

s.name            	= "TBSwiftExtensions"
s.version          	= "0.1"
s.summary          	= "Swift extensions / helpers used in most of the projects"
s.description      	= "Swift extensions / helpers used in most of the projects"
s.homepage         	= "https://github.com/tbaranes/TBSwiftExtensions"
s.license          	= 'MIT'
s.author           	= { "Tom Baranes" => "tom.baranes@gmail.com" }
s.source           	= { :git => "https://github.com/tbaranes/TBSwiftExtensions.git", :tag => s.version.to_s }

# ―――  Spec tech  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

s.ios.platform     	   		= '8.0'
s.osx.deployment_target 	= '10.10'
s.tvos.deployment_target 	= '9.0'

s.requires_arc 	   			= true
s.ios.source_files			= 'TBSwiftExtensions/*.swift, TBSwiftExtensions/ios/*.swift' 
s.osx.source_files			= 'TBSwiftExtensions/*.swift, TBSwiftExtensions/osx/*.swift' 
s.tvos.source_files			= 'TBSwiftExtensions/*.swift'

end