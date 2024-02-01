var url = "https://jsonplaceholder.typicode.com/users"

fetch(url) .then(response => response.json())
    .then(response => {
        response.forEach(element => {
            console.log("ID: " + element.id +
            " userID: " + element.userID + "post_title")
        });
    })


