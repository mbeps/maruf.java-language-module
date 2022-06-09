#^ DEPENDENCIES
function title() {
	# clear
	echo $1
}

function installExtensions() {
	extensions=$1
	for extension in "${extensions[@]}"; do
		code --install-extension $extension
	done
}

function java() {
	title "Java"
	
	extensions=(
		"redhat.java" 									# Language Support for Java
		"vscjava.vscode-java-debug" 					# Debugger for Java
		"vscjava.vscode-java-dependency" 				# Dependency Analysis
		"vscjava.vscode-java-test" 						# Test Runner for Java
		"vscjava.vscode-maven" 							# Maven for Java
		"shengchen.vscode-checkstyle" 					# Checkstyles for Java
		"dhruv.maven-dependency-explorer" 				# Maven Dependency Explorer
	)
	gradle
	installExtensions "${extensions[@]}"
}

function gradle() {
	title "Gradle"
	
	extensions=(
		"vscjava.vscode-gradle" 						# Gradle
		"naco-siren.gradle-language" 					# Gradle Language Support
	)
	installExtensions "${extensions[@]}"
}
