Pod::Spec.new do |s|
  s.name         = "RNEventHandler"
  s.version      = "0.1.1"
  s.summary      = "Native Event Handler for react-native"

  s.homepage     = "https://github.com/koutalou/react-native-event-handler"

  s.license      = "MIT"
  s.authors      = { "koutalou" => "k.koutlaou@gmail.com" }
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/koutalou/react-native-event-handler.git" }

  s.source_files  = "RNEventHandler/*.{h,m}"

  s.dependency 'React'
end
