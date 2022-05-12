// import {} from "@actions/core";
import github, {context} from "@actions/github";

console.log(github);
console.log(context);
console.log(context.payload);
console.log(context.payload.head_commit);
