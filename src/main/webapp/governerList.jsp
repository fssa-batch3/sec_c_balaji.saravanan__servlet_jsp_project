<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>governer</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <link href="<%=request.getContextPath()%>/assets/css/footer.css"
	rel="stylesheet">
	<link href="<%=request.getContextPath()%>/assets/css/index.css"
	rel="stylesheet">
	
	<link href="<%=request.getContextPath()%>/assets/css/main.css"
	rel="stylesheet">
	
	 <style>
        #head_tamil {
            position: sticky;
            top: 0;
            z-index: 10;
        }

        fieldset {
            padding: 0;
            margin: 0;
            border: 0;
            max-width: 340px;
            border-radius: 20px;
            width: 100%;
            position: sticky;
            top: 50px;
        }

        legend {
            font-size: 18px;
            font-weight: 600;
            color: #191919;
            margin: 0;
            background: #edf4fe;
            width: 100%;
            padding: 20px;
            box-sizing: border-box;
            border-radius: 10px 10px 0 0;
            border: 2px solid #3a88f6;
            display: flex;
        }

        fieldset label {
            font-weight: 300;
            font-size: 16px;
            cursor: pointer;
            display: flex;
            align-items: center;
            flex: 1;
            box-sizing: border-box;
            display: flex;
            padding: 20px 20px 20px 50px;
            font-weight: 500;
            color: #191919;
            -webkit-tap-highlight-color: transparent;
        }

        fieldset input[type="radio"] {
            position: relative;
            appearance: none;
            -webkit-appearance: none;
            transition: linear 0.8s;
            height: 0;
            width: 0;
            -webkit-tap-highlight-color: transparent;
        }

        fieldset input[type="radio"]:after {
            content: "";
            position: absolute;
            height: 16px;
            width: 16px;
            top: -10.5px;
            left: -30px;
            border-radius: 20px;
            border: 2px solid #3a88f6;
            transition: linear 0.2s;
            cursor: pointer;
        }

        fieldset input[type="radio"]:checked:after {
            content: "";
            position: absolute;
            height: 16px;
            width: 16px;
            background: #3a88f6;
            transition: linear 0.2s;
            cursor: pointer;
        }

        fieldset input[type="radio"]:checked:before {
            content: "";
            position: absolute;
            height: 8px;
            width: 8px;
            border-radius: 4px;
            background: #fff;
            left: -24px;
            top: -4.5px;
            z-index: 1;
            cursor: pointer;
        }

        .radio-item-container {
            display: flex;
            flex-direction: column;
            border: 2px solid #3a88f6;
            border-top: 0;
            background: #fff;
            border-radius: 0 0 10px 10px;
            padding: 10px 0;
        }

        .radio-item {
            display: flex;
            position: relative;
        }

        .icon {
            font-size: 24px;
            position: absolute;
            right: 26px;
            top: 11px;
            transition: linear 0.3s;
        }

        fieldset input[type="radio"]:checked+span>.icon {
            transform: scale(1.3);
            color: orangered;
        }
    </style>
    

</head>

<body>

<jsp:include page="${request.getContextPath()}/homeNavBar.jsp"></jsp:include>
	
    <!-- navbar all -->

    <!-- governer list -->

    <div id="governer-list" class="governer">
        <h1>TamilNadu Governer List
        </h1>
        <p>Generally a governor is an executive of a non-sovereign government acting under its head of state
            He is an officer. In a federal state a governor may be appointed by the state or by the people or by the state
            may be elected by the members.</p>

        <div class="governerlistsort">

            <fieldset>
                <legend>Choose a sort</legend>
                <div class="radio-item-container">
                    <div class="radio-item">
                        <label for="vanilla" id="sortName">
                            <input type="radio" id="vanilla" name="flavor" value="vanilla">
                            <span>Sort Name<span class="icon">A-Z</span> </span>
                        </label>
                    </div>
                    <div class="radio-item">
                        <label for="vanilla" id="sortName1">
                            <input type="radio" id="vanilla" name="flavor" value="vanilla">
                            <span>Sort Name<span class="icon">Z-A</span> </span>
                        </label>
                    </div>

                    <div class="radio-item">
                        <label for="chocolate" id="sort-date1">
                            <input type="radio" id="chocolate" name="flavor" value="chocolate">
                            <span>Sort Date<span class="icon">1-9</span></span></label>
                    </div>

                    <div class="radio-item">
                        <label for="strawberry" id="sort-date">
                            <input type="radio" id="strawberry" name="flavor" value="strawberry">
                            <span>Sort Date<span class="icon">9-1</span></span></label>
                    </div>
                </div>
            </fieldset>
            <table id="my-table">

                <tr id="head_tamil">
                    <th>Sl.No</th>
                    <th>Governer<button id="sortName"></button></th>
                    <th>From<button id="sort-date"></button></th>
                    <th>To</th>
                </tr>

                <tbody class="mla_list_body">


                </tbody>

            </table>
        </div>


    </div>
    <jsp:include page="${request.getContextPath()}/footer.jsp"></jsp:include>
    <script>
    const governor_list_english = [
    	  {
    	    "id": "1",
    	    "governor_name": "R. N. Ravi",
    	    "image": "https://freeimghost.net/images/2023/05/07/ravi-gover.jpeg",
    	    "from": "10 September 2021",
    	    "to": "Present Governor"
    	  },
    	  {
    	    "id": "2",
    	    "governor_name": "Banwarilal Purohit",
    	    "image": "https://freeimghost.net/images/2023/05/07/pannish-gover.jpeg",
    	    "from": "6 October 2017",
    	    "to": "10 September 2021"
    	  },
    	  {
    	    "id": "3",
    	    "governor_name": "C. Vidyasagar Rao",
    	    "image": "https://freeimghost.net/images/2023/05/07/rav-gover.jpeg",
    	    "from": "2 September 2016",
    	    "to": "October 6, 2017"
    	  },
    	  {
    	    "id": "4",
    	    "governor_name": "Konijeti Rosaiah",
    	    "image": "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    "from": "31 August 2011",
    	    "to": "August 30, 2016"
    	  },
    	  {
    	    "id": "5",
    	    "governor_name": "Surjit Singh Barnala",
    	    "image": "https://freeimghost.net/images/2023/05/07/sigh-governer.jpeg",
    	    "from": "3 November 2004",
    	    "to": "August 31, 2011"
    	  },
    	  {
    	    "id": "6",
    	    "governor_name": "P.S. Rammohan Rao",
    	    "image": "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    "from": "18 January 2002",
    	    "to": "November 3, 2004"
    	  },
    	  {
    	    "id": "7",
    	    "governor_name": "C. Rangarajan",
    	    "image": "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    "from": "25 January 1997",
    	    "to": "July 3, 2001"
    	  },
    	  {
    	    "id": "8",
    	    "governor_name": "M. Fathima Beevi",
    	    "image": "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    "from": "25 January 1997",
    	    "to": "July 3, 2001"
    	  },
    	  {
    	    "id": "9",
    	    "governor_name": "Krishan Kant",
    	    "image": "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    "from": "2 December 1996",
    	    "to": "January 25, 1997"
    	  },
    	  {
    	    "id": "10",
    	    "governor_name": "Marri Chenna Reddy",
    	    "image": "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    "from": "31 May 1993",
    	    "to": "Present Governor"
    	  },
    	  {
    	    "id": "11",
    	    "governor_name": "Bhishma Narain Singh",
    	    "image": "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    "from": "15 February 1991",
    	    "to": "May 31, 1993"
    	  },
    	  {
    	    "id": "12",
    	    "governor_name": "Surjit Singh Barnala",
    	    "image": "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    "from": "24 May 1990",
    	    "to": "February 15, 1991"
    	  },
    	  {
    	    "id": "13",
    	    "governor_name": "P.C. Alexander",
    	    "image": "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    "from": "17 February 1988",
    	    "to": "May 24, 1990"
    	  },
    	  {
    	    "id": "14",
    	    "governor_name": "Sundar LalKhurana",
    	    "image": "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    "from": "3 September 1982",
    	    "to": "February 17, 1988"
    	  },
    	  {
    	    "id": "15",
    	    "governor_name": "Sadiq Ali",
    	    "image": "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    "from": "4 November 1980",
    	    "to": "September 3, 1982"
    	  },
    	  {
    	    "id": "16",
    	    "governor_name": "M.M. Ismail",
    	    "image": "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    "from": "November 4, 1980",
    	    "to": "November 4, 1980"
    	  },
    	  {
    	    "id": "17",
    	    "governor_name": "Prabhudas Patwari",
    	    "image": "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    "from": "27 April 1977",
    	    "to": "October 27, 1980"
    	  },
    	  {
    	    "id": "18",
    	    "governor_name": "P. Govindan Nair",
    	    "image": "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    "from": "9 April 1977",
    	    "to": "April 27, 1977"
    	  },
    	  {
    	    "id": "19",
    	    "governor_name": "Mohan Lal Sukhadia",
    	    "image": "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    "from": "16 June 1976",
    	    "to": "April 8, 1977"
    	  },
    	  {
    	    "id": "20",
    	    "governor_name": "Kodardas Kalidas Shah",
    	    "image": "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    "from": "June 16, 1976",
    	    "to": "June 16, 1976"
    	  },
    	  {
    	    "id": "21",
    	    "governor_name": "Sardar Ujjal Singh",
    	    "image": "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    "from": "14 January 1969",
    	    "to": "May 27, 1971"
    	  },
    	  {
    	    "id": "22",
    	    "governor_name": "Sardar Ujjal Singh (acting till 16 June 1967)",
    	    "image": "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    "from": "28 June 1966",
    	    "to": "14 January 1969"
    	  },
    	  {
    	    "id": "23",
    	    "governor_name": "Maharaja Sir Jayachamaraja Wodeyar Bahadur",
    	    "image": "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    "from": "7 December 1965",
    	    "to": "28 June 1966"
    	  },
    	  {
    	    "id": "24",
    	    "governor_name": "P. Chandra Reddy",
    	    "from": "24 November 1964",
    	    "image": "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    "to": "7 December 1965"
    	  },
    	  {
    	    "id": "25",
    	    "governor_name": "Maharaja Sir Jayachamaraja Wodeyar Bahadur",
    	    "image": "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    "from": "4 May 1964",
    	    "to": "24 November 1964"
    	  },
    	  {
    	    "id": "26",
    	    "governor_name": "Bhishnuram Medhi",
    	    "image": "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    "from": "24 January 1958",
    	    "to": "4 May 1964"
    	  },
    	  {
    	    "id": "27",
    	    "governor_name": "Pakala Venkata Rajamannar",
    	    "image": "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    "from": "1 October 1957",
    	    "to": "24 January 1958"
    	  },
    	  {
    	    "id": "28",
    	    "governor_name": "A. J. John",
    	    "image": "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    "from": "10 December 1956",
    	    "to": "30 September 1957"
    	  },
    	  {
    	    "id": "29",
    	    "governor_name": "Sri Prakasa",
    	    "image": "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    "from": "12 March 1952",
    	    "to": "10 December 1956"
    	  },
    	  {
    	    "id": "30",
    	    "governor_name": "Maharaja Sir Krishna Kumarasinhji Bhavsinhji",
    	    "image": "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    "from": "7 September 1948",
    	    "to": "12 March 1952"
    	  },
    	  {
    	    "id": "31",
    	    "governor_name": "Lieutenant-General Sir Archibald Edward Nye[3]",
    	    "image": "https://freeimghost.net/images/2023/05/13/not-iamge.jpeg",
    	    "from": "6 May 1946",
    	    "to": "September 7, 1948"
    	  }
    	];
    
    localStorage.setItem("governor_list_english",JSON.stringify(governor_list_english));
    
    const governer_list = JSON.parse(localStorage.getItem("governor_details"));

    const governer_list_english = JSON.parse(localStorage.getItem("governor_list_english"));

    const languagess = localStorage.getItem("language");

    function default_list(array) {

      array.forEach((values) => {

        const table_row = document.createElement("tr");

        const table_data1 = document.createElement("td");
        table_data1.innerText = values.id;
        table_row.append(table_data1);

        const table_data2 = document.createElement("td");
        table_row.append(table_data2);

        const data2_div_profile = document.createElement("div");
        data2_div_profile.setAttribute("class", "profile-main");
        table_data2.append(data2_div_profile);

        const div_parties = document.createElement("div");
        div_parties.setAttribute("class", "parties");
        data2_div_profile.append(div_parties);

        const div_fontside = document.createElement("div");
        div_fontside.setAttribute("class", "fontsidepro");
        div_parties.append(div_fontside);

        const name_div = document.createElement("p");
        name_div.innerText = values.governor_name;
        div_fontside.append(name_div);

        const position_div = document.createElement("p");
        div_fontside.append(position_div);
        if (languagess === "english") {
          position_div.innerText = "Governer";
        } else {
          position_div.innerText = "ஆளுநர்";
        }
        const backside_div = document.createElement("div");
        backside_div.setAttribute("class", "backsidepro");
        div_parties.append(backside_div);

        const image_div = document.createElement("img");
        image_div.setAttribute("src", values.image);
        image_div.setAttribute("alt", values.governor_name);
        backside_div.append(image_div);

        const button_div = document.createElement("button");
        backside_div.append(button_div);
        const anc_link_div = document.createElement("a");
        anc_link_div.setAttribute(
          "href",
          `governer_profile.html?name=${values.id}`
        );
        button_div.append(anc_link_div);
        if (languagess === "english") {
          anc_link_div.innerText = "Profile";

        } else {
          anc_link_div.innerText = "விவரம்";

        }
        const table_data3 = document.createElement("td");
        table_data3.innerText = values.from;
        table_row.append(table_data3);

        const table_data4 = document.createElement("td");
        table_data4.innerText = values.to;
        table_row.append(table_data4);

        document.querySelector(".mla_list_body").append(table_row);

      });

    }


    default_list(governor_list_english);

    window.onload = function () {
      const searchBox = document.querySelector("#searchbar");
      searchBox.addEventListener("input", () => {
        const filterValue = searchBox.value.toLocaleLowerCase();

        const rows = document.querySelectorAll("table tr");

        for (let i = 1; i < rows.length; i++) {
          // start from index 1 to skip the header row
          const row = rows[i];

          const id = row.children[0].textContent.toLocaleLowerCase();

          const name = row.children[1].textContent.toLocaleLowerCase();

          const party = row.children[3].textContent.toLocaleLowerCase();

          const leader_name = row.children[2].textContent.toLocaleLowerCase();

          if (
            name.includes(filterValue) ||
            party.includes(filterValue) ||
            leader_name.includes(filterValue) ||
            id.includes(filterValue)
          ) {
            row.style.display = "table-row";
          } else {
            row.style.display = "none";
          }
        }
      });
    };

    const table1 = document.querySelector("table");
    const { rows } = table1;

    const sortNameButton = document.querySelector("#sortName");
    sortNameButton.addEventListener("click", () => {
      const sortedRows = Array.from(rows)
        .slice(1)
        .sort((a, b) => {
          const nameA = a.cells[1].textContent;
          const nameB = b.cells[1].textContent;
          return nameA.localeCompare(nameB);
        });

      table1.tBodies[0].append(...sortedRows);
    });

    const sortDateButton = document.getElementById("sort-date");
    sortDateButton.addEventListener("click", () => {

      const table = document.querySelector("table");

      const { rows } = table;

      const sortedRows = Array.from(rows)
        .slice(1)
        .sort((a, b) => {
          const dateA = (a.cells[0].textContent);
          const dateB = (b.cells[0].textContent);
          return dateB - dateA; // Sort in descending order
        });

      table.tBodies[0].append(...sortedRows);
    });


   

    </script>


    <!-- script for bootstrap -->

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

 <script src="<%=request.getContextPath()%>/assets/js/trsnslate.js"></script>

</body>

</html>