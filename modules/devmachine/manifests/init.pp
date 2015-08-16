class devmachine {

	#Install Java 6
	package { 'Legacy Java 6 JRE':
	    ensure => installed,
	    provider => appdmg,
	    source => "http://delines-air.local:8000/javaforosx.dmg"
  	}

	#Install Java 8

	#install Sublime
	package { 'Sublime':
	    ensure => installed,
	    provider => appdmg,
	    source => "http://delines-air.local:8000/SublimeText2.0.2.dmg"
  	}

	#install IntelliJ
	package { 'IntelliJ':
	    ensure => installed,
	    provider => appdmg,
	    source => "http://delines-air.local:8000/ideaIC-14.1.4.dmg"
  	}


	#Install Xcode
	#Install Xcode CLI
	#install xctool
	#install Cocoapods
	#install Fastlane

	#Install certificates

	#Notify complete
	notify { 'hello':
	  message  => "BLAH"
	}
}