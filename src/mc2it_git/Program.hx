package mc2it_git;

import github.Event;
import js.actions.Core;
import js.actions.GitHub;

/** Application entry point. **/
function main() {
	if (GitHub.context.eventName != Event.Push) return;

	//final version = Core.getInput("version");
	trace(GitHub);
	trace(GitHub.context);
	trace(GitHub.context.payload);
	trace(GitHub.context.payload.head_commit);
}

/** TODO **/
final class Program {

}
