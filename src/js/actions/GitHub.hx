package js.actions;

import github.PushEvent;

/** A hydrated Octokit client. **/
@:jsRequire("@actions/github")
extern class GitHub {

	/** Information about the workflow run. **/
	static final context: GitHubContext;
}

/** Contains information about the workflow run and the event that triggered the run. **/
typedef GitHubContext = {

	/** The name of the action currently running, or the `id` of a step. **/
	var action: String;

	/** The username of the user that initiated the workflow run. **/
	var actor: String;

	/** The URL of the GitHub REST API. **/
	var apiUrl: String;

	/** The event name. **/
	var eventName: String;

	/** The URL of the GitHub GraphQL API. **/
	var graphqlUrl: String;

	/** The `job_id` of the current job. **/
	var job: String;

	/** The full event webhook payload. **/
	var payload: PushEvent;

	/** The branch or tag ref that triggered the workflow run. **/
	var ref: String;

	/** A unique number for each workflow run within a repository. **/
	var runId: String;

	/** A unique number for each run of a particular workflow in a repository. **/
	var runNumber: Int;

	/** The URL of the GitHub server. **/
	var serverUrl: String;

	/** The commit SHA that triggered the workflow run. **/
	var sha: String;

	/** The name of the workflow. **/
	var workflow: String;
}