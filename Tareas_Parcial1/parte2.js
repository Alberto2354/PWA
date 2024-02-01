// var url = "https://jsonplaceholder.typicode.com/users";

// fetch(url)
//   .then(response => response.json())
//   .then(data => {
//     data.forEach(element => {
//       console.log(element.username);
//     });
//   });


// fetch(url, {
//     method: "POST",
//     headers: {
//         "Content_type": "application/json"
//     },
//     body: JSON.stringify({
//         username: "Foo",
//         email:"foo@foo.com"
//     })
// }).then(response => response.json())
//     .then(response => console.log(response))


const url = 'http://api.stackexchange.com/2.2/questions?site=stackoverflow&tagged=javascript'

const responseData = fetch(url).then(response => response.json())

responseData.then(data => {
    data.items.forEach(item => {
        console.log(item.question_id + ' title: ' + item.title + ' user: ' + item.owner.display_name);
      });
})


const url = 'https://pokeapi.co/api/v2/pokemon';

const responseData = fetch(url)
  .then(response => response.json())
  .then(data => {
    data.results.forEach(item => {
      console.log(item.name + ' url: ' + item.url);
    });
  })
  .catch(error => console.error('Error fetching data:', error));
