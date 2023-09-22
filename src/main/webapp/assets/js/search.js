

const url = window.location.search;

const urlParams = new URLSearchParams(url);

const username = urlParams.get("election");

console.log(username);

function callAjax() {
	const url = "http://localhost:8080/politifact_web/SearchLeader";
	axios.get(url)
		.then(function(response) {
			// handle success
			console.log(response.data);
			const accArr = response.data;
			appendLeaders(accArr);
		})
		.catch(function(error) {
			// handle error
			console.log(error);
		})
}

const searchInput = document.getElementById("searchbar");

const searchResults = document.getElementById("search_result");

// Function to create a card for a minister

function createMinisterCard(minister) {
	const card = document.createElement("div");
	card.setAttribute("class", "card4");

	const name = document.createElement("a");
	name.setAttribute(
		"href",
		`ProfileDetailPage?id=${minister.id}`
	);
	name.innerText = minister.name;
	card.appendChild(name);

	const position = document.createElement("p");
	position.innerText = minister.position;
	card.appendChild(position);

	return card;
}

searchInput.addEventListener("input", (e) => {
	callAjax();
	e.preventDefault();
});

function appendLeaders(minister_values_search) {
	
	const searchTerm = searchInput.value.trim().toLowerCase();
	searchResults.style.display = "block";
	searchResults.innerHTML = "";

	if (searchTerm === "") {
		searchResults.style.display = "none";
		return; // do not display any search results
	}

	const filteredMinisters = minister_values_search.filter((minister) => {
		// this is filter function using this function used to filter the json .
		const ministerName = minister.name.trim().toLowerCase(); // all value change in lowercase
		return ministerName.includes(searchTerm); // return filter value and sertterm condition check this line
	});

	if (filteredMinisters.length > 0) {
		// card create if condition
		filteredMinisters.forEach((minister) => {
			
			// for each function this line use this check for minister name ;
			
			
			const card_div = createMinisterCard(minister); 
			
			// already card create this card call this line
			
			searchResults.appendChild(card_div); // return value append
		});
		
	} else {
		const li = document.createElement("li"); // this is not found code
		li.textContent = "No results found.";
		searchResults.appendChild(li);
	}
}
