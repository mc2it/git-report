/**
 * Represents a mail address.
 */
export class MailAddress {

	/**
	 * The address.
	 * @readonly
	 * @type {string}
	 */
	address;

	/**
	 * The display name.
	 * @readonly
	 * @type {string}
	 */
	name;

	/**
	 * Creates a mail address.
	 * @param {string} address The address.
	 * @param {string} [name] The display name.
	 * @throws {TypeError} The specified address could not be parsed.
	 */
	constructor(address, name = "") {
		if (!name && address.includes("<")) {
			const match = address.match(/(?<displayName>[^<]*)<(?<addressSpec>.*)>[^>]*/)?.groups;
			if (!match) throw new TypeError(`Could not parse "${address}" as a mail address.`);
			address = match.addressSpec.trim();
			name = match.displayName.trim();
		}

		this.address = address;
		this.name = name;
	}
}
