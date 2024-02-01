// const array = [1, 2, 3, 4, 5, "foo", "bar", true, 2.51];

// const obj = {
//     'first_name': "Foo",
//     'last_name': 'Bar',
//     'age': 23,
//     'status': true
// };

// console.log(typeof obj);
// console.log(obj["first_name"]);
// console.log(obj.first_name);
// console.log(obj, array);



// for (let i = 0; i < 1000; i += 100) {
//   console.log(i);
// }

// for (let i of array) {
//   console.log(i);
// }






// array.forEach(element => {
//   console.log(element);
// });
// let i = 0;
// while (i < 10) {
//   console.log(i);
//   i++;
// }
// i = 0;
// do {
//   console.log(i);
//   i++;
// } while (i < 10);



// var x = 95;

// if (x > 90) {
//   console.log("Es mayor");
// } else {
//   console.log("No es mayor");
// }




// var animal = "kitty";

// if (animal === "kitty") {
//   console.log("Es una linda gatita");
// } else {
//   console.log("No es una linda gatita");
// }



// var animal = "kitty";

// var cat = (animal === "kitty") ? console.log('It is a pretty kitty') : console.log('It is not a pretty kitty');

// switch(animal) {
//   case "kitty":
//     console.log("Case one");
//     break;
//   case "puppy":
//     console.log("Puppy");
//     break;
//   default:
//     console.log("Otherwise");
//     break;
// }




// function prism(l){
//   return function(w){
//     return function(h){
//       return l*w*h
//     }
//   }
// }
// console.log(prism(59)(12)(9))






// var message = "hello world"
// const foo = (function(msg){
//   console.log("Hola " + msg);
//   return msg
// }(message));
// console.log(foo)
// function prism(l,h,w){
//   return l*w*h
// }
// console.log(prism(23,45,50))



// var sumTwoNumbers = function sum(a, b) {
//   return a + b;
// }
// sumTwoNumbers(1, 3);




// var say = function say(Times){
//   say = undefined;
//   if(Times > 0){
//     console.log("Hello")
//     say(Times -1)
//   }
// }
// var saysay = say
// say = 'Oops!'
// saysay(100)



// function personSay(person, ...msg){
// msg.forEach(arg => {
//   console.log(person + 'say: ' + arg)
// })
// }

// personSay('aa','hello', 'JS', 'REACT', 'NATIVE', 'PWA')



