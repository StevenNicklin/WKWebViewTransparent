function getTestMessage() {
	window.webkit.messageHandlers.test.postMessage({body: "This is a test message."});
}