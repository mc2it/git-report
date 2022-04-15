package mc2it_git;

import js.actions.Core;
import js.actions.GitHub;

/** Application entry point. **/
function main() {
	//final version = Core.getInput("version");
	trace(GitHub);
	trace(GitHub.context);
	trace(GitHub.context.payload);
	trace(GitHub.context.payload.head_commit);
}

/** TODO **/
final class Program {

}
