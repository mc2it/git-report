import haxe.Json;
import sys.FileSystem;
import sys.io.File;

/** Runs the script. **/
function main() {
	if (FileSystem.exists("docs")) Tools.removeDirectory("docs");

	Sys.command("haxe --define doc-gen --no-output --xml var/api.xml build.hxml");
	Sys.command("lix", [
		"run", "dox",
		"--define", "description", "TODO",
		"--define", "source-path", "https://github.com/mc2it/git-report/blob/main/src",
		"--define", "themeColor", "0x165898",
		"--define", "version", Json.parse(File.getContent("haxelib.json")).version,
		"--define", "website", "https://github.com/mc2it/git-report",
		"--input-path", "var",
		"--output-path", "docs",
		"--title", "MC2IT Git Report",
		"--toplevel-package", "mc2it_git"
	]);

	File.copy("www/favicon.ico", "docs/favicon.ico");
}
