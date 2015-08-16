class devmachine {


	# #Install Java 6
	providerackage { 'Legacy Java 6 JRE':
		ensure => installed,
		provider => pkgdmg,
		source => "http://delines-air.local:8000/javaforosx.dmg"
	}

	#Install Java 8

	#Install Sublime
	package { 'Sublime':
		ensure => installed,
		provider => appdmg,
		source => "http://delines-air.local:8000/SublimeText2.0.2.dmg"
	}

	#Install IntelliJ
	package { 'IntelliJ':
		ensure => installed,
		provider => appdmg,
		source => "http://delines-air.local:8000/ideaIC-14.1.4.dmg"
	# }


	#Install Xcode
	#Install Xcode CLI
	#install xctool

	### Ruby ###
	$ruby_version = "2.1.2"

	# Set global default ruby
	class { 'ruby::global':
  		version => $ruby_version
	}

	# # Install RubyGems - cocoapods, fastlane etc
	ruby_gem { 'cocoapods':
  		gem          => 'cocoapods',
  		version      => '0.38.2',
  		ruby_version => $ruby_version
	}


}