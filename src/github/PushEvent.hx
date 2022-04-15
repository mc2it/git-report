package github;

import github.Organization;

/** Represents the payload of a GitHub push event. **/
typedef PushEvent = {

	/** The SHA of the most recent commit on `ref` after the push. **/
	var after: String;

	/** The SHA of the most recent commit on `ref` before the push. **/
	var before: String;

	/** An array of commit objects describing the pushed commits. **/
	var commits: Array<Commit>;

	/** The URL that shows the changes in this `ref` update, from the `before` commit to the `after` commit. **/
	var compare: String;

	/** Value indicating whether this push created the `ref`. **/
	var created: Bool;

	/** Value indicating whether this push deleted the `ref`. **/
	var deleted: Bool;

	/** Value indicating whether this push was a force push of the `ref`. **/
	var forced: Bool;

	/** An expanded representation of the commit. **/
	var head_commit: Commit;

	/** The organization object when the event occurs from activity in a repository owned by an organization. **/
	var organization: Organization;

	/** The user who pushed the commits. **/
	var pusher: User;

	/** The Git reference that was pushed. **/
	var ref: String;

	/** The repository where the event occurred. **/
	var repository: Repository;

	/** The user that triggered the event. **/
	var sender: User;
}
