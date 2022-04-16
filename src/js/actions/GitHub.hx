package js.actions;

import github.Context;

/** A hydrated Octokit client. **/
@:jsRequire("@actions/github")
extern class GitHub {

	/** Information about the workflow run. **/
	static final context: Context;
}
