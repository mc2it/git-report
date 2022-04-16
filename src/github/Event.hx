package github;

/** Defines an event type. **/
enum abstract Event(String) from String {

	/** A push event. **/
	var Push = "push";
}
