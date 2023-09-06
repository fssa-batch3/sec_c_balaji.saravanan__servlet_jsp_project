/**
 * 
 */

      
            const translateBtn = document.getElementById("lang_ta");
            

            translateBtn.addEventListener("click", () => {
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
            });

        
        const votersData = [
            { label: "Women", value: 31828727 },
            { label: "Men", value: 30838473 },
            { label: "Third Gender", value: 7246 }
        ];

        // Create pie chart
        const ctx = document.getElementById("chartCanvas").getContext("2d");

        new Chart(ctx, {
            type: "pie",
            data: {
                labels: votersData.map(data => data.label),
                datasets: [{
                    data: votersData.map(data => data.value),
                    backgroundColor: ["#FF6384", "#36A2EB", "#FFCE56"],
                    hoverBackgroundColor: ["#FF6384", "#36A2EB", "#FFCE56"]
                }]
            },
            options: {
                plugins: {
                    legend: {
                        position: "left", // Adjust the position to your preference (e.g., "left", "top", "bottom")
                        align: "start", // Align the legend text to the start of the line
                    },
                },
            },
        });


        const bribeData = [
            { label: "Paid Several Times", percentage: 35 },
            { label: "Paid Once or Twice", percentage: 27 },
            { label: "Did Not Pay", percentage: 8 },
            { label: "No Need to Pay", percentage: 30 }
        ];

        // Extract labels and percentages
        const labels = bribeData.map(data => data.label);
        const percentages = bribeData.map(data => data.percentage);

        // Create line chart
        const ctx1 = document.getElementById("myChart").getContext("2d");
        new Chart(ctx1, {
            type: "line",
            data: {
                labels: labels,
                datasets: [{
                    label: "Bribe Survey Results",
                    data: percentages,
                    backgroundColor: "rgba(54, 162, 235, 0.2)",
                    borderColor: "rgba(54, 162, 235, 1)",
                    borderWidth: 2,
                    pointBackgroundColor: "rgba(54, 162, 235, 1)",
                    pointRadius: 4,
                    pointHoverRadius: 6,
                    fill: "start"
                }]
            },
            options: {
                responsive: true,
                scales: {
                    y: {
                        beginAtZero: true,
                        max: 100,
                        ticks: {
                            stepSize: 10
                        }
                    }
                }
            }
        });