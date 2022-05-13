import assert from "node:assert/strict";
import {MailAddress} from "../lib/index.js";

/**
 * Tests the features of the {@link MailAddress} class.
 */
describe("MailAddress", () => {
	describe("constructor", () => {
		it("should not parse the address if the display name is omitted", () => {
			const mailAddress = new MailAddress("dev@mc2it.com");
			assert.equal(mailAddress.address, "dev@mc2it.com");
			assert.equal(mailAddress.name.length, 0);
		});

		it("should parse the address if it includes a display name", () => {
			const mailAddress = new MailAddress("MC2IT <dev@mc2it.com>")
			assert.equal(mailAddress.address, "dev@mc2it.com");
			assert.equal(mailAddress.name, "MC2IT");
		});
	});
});
