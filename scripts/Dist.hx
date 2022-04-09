import sys.io.File;

/** Runs the script. **/
function main() {
	for (script in ["Clean", "Version"]) Sys.command('lix $script');
	Sys.command("haxe --dce full build.hxml");

	final file = "bin/mc2it_git.js";
	Sys.command('npx ncc build $file --minify --out=var');
	File.saveContent(file, '#!/usr/bin/env node\n${File.getContent("var/index.js")}');
	Sys.command('git update-index --chmod=+x $file');
	if (Sys.systemName() != "Windows") Sys.command('chmod +x $file');
}
