import { scHelpers } from "~/assets/js/utils";
const { uniqueID } = scHelpers;

export const menuEntries = [
	{
		section_title: "Applications"
	},
	{
		id: uniqueID(),
		title: "Chat",
		icon: "mdi mdi-message-outline",
		page: "/pages/chat"
	},
	{
		id: uniqueID(),
		title: "Invoices",
		icon: "mdi mdi-receipt",
		page: "/pages/invoices"
	},
	{
		id: uniqueID(),
		title: "Mailbox",
		icon: "mdi mdi-email-outline",
		page: "/pages/mailbox"
	},
		
	
];


