const tamil_nav = [
	"முகப்பு",
	"விவரம்",
	"தலைவர்கள்",
	"மேலும்",
	"ஆளுநர்கள்",
	"பிரதிநிதிகள்",
	"நிதிநிலை அறிக்கை",
	"நிர்வாகம்",
	" மொழி",
	"தமிழ்",
	"ஆங்கிலம்",
	"உள்நுழைக",
	"பதிவு செய்யவும்",
	"சுயவிவரம்",
];

const english_nav = [
	"Home",
	"Portfolios",
	"past Leaders",
	"More",
	"Governors",
	"Representatives",
	"Budget",
	"Admin",
	"Language",
	"Tamil",
	"English",
	"Login",
	"Register",
	"Profile",
];

const tamil = "tamil";
const english = "english";

const change_elem = document.querySelectorAll(".list_li");

document.getElementById("lang_ta").addEventListener("click", () => {

	window.location.reload();

	change_elem.forEach((item, index) => {

		item.innerHTML = tamil_nav[index];

	});

	document.getElementById("searchbar").placeholder = "தேடுக";


	localStorage.setItem("language", tamil);

});

document.getElementById("lang_eng").addEventListener("click", () => {

	window.location.reload();

	change_elem.forEach((item, index) => {

		item.innerHTML = english_nav[index];

	});

	document.getElementById("searchbar").placeholder = "search";

	localStorage.setItem("language", english);
});



const language_setting = localStorage.getItem("language");


if (language_setting === "english") {

	change_elem.forEach((item, index) => {

		item.innerHTML = english_nav[index];

	});

	document.getElementById("searchbar").placeholder = "search";

} else if (language_setting === "tamil") {

	change_elem.forEach((item, index) => {

		item.innerHTML = tamil_nav[index];

		document.getElementById("searchbar").placeholder = "தேடுக";
	});

	const targetLanguage = "ta"; // translate to English
	const walker = document.createTreeWalker(
		document.body,
		NodeFilter.SHOW_TEXT,
		{ acceptNode: (node) => /\S/.test(node.nodeValue) }
	);

	while (walker.nextNode()) {
		const node = walker.currentNode;
		const text = node.nodeValue.trim();
		console.log(text);
		const translateUrl = `https://translate.googleapis.com/translate_a/single?client=gtx&sl=auto&tl=${targetLanguage}&dt=t&q=${text}`;

		fetch(translateUrl)
			.then((response) => response.json())
			.then((data) => {
				if (data && data[0] && data[0][0] && typeof data[0][0][0] === 'string') {
					const translatedText = data[0][0][0]; // get the translated text from the API response
					node.textContent = node.textContent.replace(text, translatedText); // update the text node with the translated text
				} else {
					console.error("Translation data is in an unexpected format:", data);
				}
			})
			.catch((error) => console.error(error));
	}
}

const searchbar = document.getElementById("searchbar");

const recognition = new webkitSpeechRecognition();

// Set the recognition properties
recognition.continuous = false;

if (language_setting === "tamil") {
	recognition.lang = "ta-IN";
} else if (language_setting === "english") {
	recognition.lang = "en-US";
}

const searchIcon = document.getElementById("search-icon");

searchIcon.addEventListener("click", search);

// Perform the search
function search() {
	recognition.onresult = function(event) {
		const searchText = event.results[0][0].transcript;
		searchbar.value = searchText;
		searchbar.focus();
	};
}


searchIcon.addEventListener("click", () => {
	recognition.start();
});




let languages = "english";
if (!localStorage.getItem("language")) {
	localStorage.setItem("language", (languages));

}


