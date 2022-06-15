#Square one of JavaScript!

The date is March 26, 2020. We are now nearly two weeks into complete quarantine. The Senate has drafted and approved a relief aid package that will provide US taxpayers making less thatn $75,000 per year with checks of $1,200. Small businesses will be eligible for low-to-no interest loans to allow them to continue paying their employees through the crisis. It's a package two times larger than the 2009 stimulus package following the 2008 financial crisis. But still, it might not be enough. 

Let's begin reviewing JavaScript with the goal of writing a personal website! 

#Javascript Introduction:
JavaScript is the primary coding language used in the modern internet. 


- Method = operation that can be performed on an object. i.e. console.log() - log is a method of the console object.
- ES6 version of JavaScript was released in 2015.
    - var was the keyword used to define a variable prior to 2015.
    - now, the preferred keywords are let and const. why?
        - let signals that the value can be reassigned
        *you can define a let variable without assigning it a value. this will instantiate the variable with a value of "undefined"*
        - const variable values cannot be reassigned. Attempting to change them results in a TypeError. these variables must be instanitated with a value. 
- Variable = container for a value

### String Interpolation
- using template literals i.e. 
`const myFriend = 'grass Fin'`
console.log(`hello, you are a beautiful person ${myFriend}.`)

### If statements
i.e.
```if (true) {
    action
};
```

### If Else Statements
i.e.
``` if (true) {
    action
} else {
    other action
}
```

### Comparison Operators
- Less than <
- Greater than >
- Less than or equal to <=
- Greater than or equal to >=
- Equal to ===
- Not equal to !==


### Logic Operators
- AND && - verifies that both of the compared statements are true
- OR || - verifies that one of the compared statements is true
- NOT! (also known as teh bang operator) - negates the value of a boolean
*use || or operator to assign variable names via short-circuit evaluation as follows*:
`const username = name || "stranger";

## Ternary operator - Short-hand syntax 
allows us to write if else statments more succinctly:
`check ? iftrue : if false;`

# else if statement and switch
if we need to evaluate many unique conditions, we can use a sequence of else if statements, or we can use the switch statement to be less verbose:
switch (item) {
    case "item1": action1;
    break;
    case "item2": action2;
    break;
    case "item3": action3;
    break;
    default: default action;
    break;
}
}

## Falsey vs Truthy values
Falsey values are as follows:
- 0
- ""
- null
- NaN 
- undefined


# Functions
a block of code that groups a series of actions into one task.
Decalring a function in JavaScript - 
function identifier() {
    content
}
'in JavaScript, hoisting, or calling functions before they are defined, is allowed. However, it is not condoned. Don't do it. 

- Calling a funciton: identifier();
- can include a default parameter that is called within the function:
    - i .e. function greeting( name = "stranger") {
            console.log(`hello, ${name}!`)
    }
- if there is a parameter givien in the function call, this is what the function will use. But if there is not, it will use the default value.
- return statement determines what the function outputs. only one return statement will run per function call. 
- using helper functions to return the value of one function inside another can make code easier to read and debug.
i.e. 
```
function multiplyByNineFifths(number) {
    return number * (9/5);
};

function getFahrenheit(celsius) {
    return multiplyByNineFifths(celsius) + 32;
};

getFahrenheit(15); 

```
- it is also possbile to define a function via a function expresion using the function keyword. Functions without names are called anonymous functions. They can be stored in a variable (const or let)

`const myName = function(name) {
    console.log(`This is my name! ${name}`)
}`

- another way of wrigin a funciton is to use arrow function syntax. This removes the need to type out "function" each time yo uwant to write a function. 
- () => {} 
- put the params in the parantheses, and the function content between the brackets as normal. 


### Scope 
- Defines where variables can be accessed or references. 
- global scope = variables defined outside of funciton or class blocks. 
    - These variables then occupy the global namespace and can pollute the namespace, making the code more accident prone
- block scope = variables defined inside of a block only accessible to the code within the {}

### Arrays
- JavaScripts way of making lists
`let myFaveAnimals = ['elephants', 'Dimetrodon', 'Lystrosaurus', 'rock hyrax'];`
- in this array, all list items are called elements
- you can access elements via indices i.e. myFaveAnimals[0]
- you can also change the value of an element using indices i.e. myFaveAnimals[2] = "Leipleurodon"
- arrays have lots of built in proepries i.e. length
- they also have lots of methods i.e. 
    - .push() adds to the end of an array
    - .pop() removes the last item in the array
- others include .join(), .slice(), .splice(), .shift(), .unshift(), .concat()
- pass by reference concept - if you pass an array into a function, the changes that occur to that array within the funciton will be maintained outside the function as well. 
- Nested arrays are arrays within arrays. Elements in nested arrays can be accessed via index chaining

### Loops
- Loops tell computers to repeat a given block of code on its own.
- in JavaScript, for loops contain three expressions separated by ; inside parentheses

`for (let counter = 0; counter < 4; counter++) {
  console.log(counter);
};`

- first, the loop is initialized with a counter of zero. 
- the second statement tells the loop when to stop (4)
- the third tells the loop what to do in between the start and end values

### Nested Loops
e.g.
for (let i = 0; i < myArray.length; i++) {
    for (let j = 0; j < yourArray.length; j++) {
        if (myArray[i] === yourArray[j]) {
            console.log("It's a match");
        }
    }
}

### While Loops
- while loops check a set condition each time the loop runs. 
let counter = 0
while (counter < 4) {
    console.log(counter);
    counterTwo++
}
This is a bit more similar to the way while loops work in Python with the incrementing happening in the code block.

### Do While Statement 
- tells code tor un once, then continue if a specific ciondition is met
- 
do {
    countString = countString + i;
    i++;
} while (i < 5);
console.log(countString);

### Break Keyword- 
- Allows us to exit a block of code
i.e.
rappers = ["LL Cool J", "Q- Tip", "RZA"]

for (let rapper = 0; rapper < rappers.length; rapper++) {
    if (rapper === "Q-Tip") {
        break;
    }
    console.log(rapper)
}
console.log("q - QUIT");

### Higher Order Functions
- Higher order functions allow us to extend abstraction one layer beyond functions
- In JavaScript, functions are first-class objects, meaning that they can have properties and methods
- we can reset a function to a new name by simple variable redefinition
- higher-order function is a function that accepts functions as parameters, returns a funciton, or both
- functions passed in as parameters into another funciton are called "callback functions" because they are called during the execution of the higher-order function

### Iteration
- Rather than using for loops, JavaScript allows use of iteration methods on arrays to achieve iteration
- .forEach() method - executes the same code for each element of an array.

const artists = ['Hopper', 'Munch', 'Basquiat']
i.e.
artists.forEach(artist => {
    console.log(artist + ' is one of my favorite artists.);
}

- .map() method works similarly to forEach, only .map returns a news array.
- this allows us to perform a change to each element of an array and save it in a new array.
- .filter() method - also returns a new array, like .map(), after filtering out certain elements from the original array.
- checks each element against a condition, for example a property of a string like .length or .name
- .findIndex() will print the index value of an item in an array. If is possbile to filter which array item's indices will be returned using a property filter

### Objects
- creating objects: define a variable with properties listed in key, value pairs
i.e.
`let iceCream = { bestOne: "strawberry", others: "everything else"};`
- access properties using dot notation
i.e. iceCream.bestOne;
- if you try to access a property that doesn't exist, undefined will be returned.

#### Object Mutability
- objects can be mutated after they are instantiated!
- you can delete properties using delete operator
    - delete iceCream.bestOne;

- you can use dot operator to assign the object a property as well. 
    - iceCream.favorite = "chocolate";
- you can change a property's value using the 

#### Object Methods
const musicListening = {
    pickSong () {
        index = songList[Math.floor(Math.random() * songlist.length)];
    }
}
- invoke an object method using the method name and parentheses - musicListening.pickSong()

#### Nesting Objects
- Objects can be stored within other objects
- this can be used to group objects

*Objects are passed by reference. when we pass a variable assigned to an object into a funciton as an argument, the computer interprets the parameter name as pointing to the space in memory holding that object. Thus, functions taht change object properties will mutate the object permanently, even if the object is assigned to a const variable!*

#### Looping through objects using For ... In
ie. if this is the object:
let spaceship = {
    crew: {
    captain: {
        name: 'Ezra Ammiya',
        degree: 'computer engineering',
        cheer() 'I love maple syrup, eh!'
    }
    "chief officer" : {
        name: "Terry";
    }
    yuppie: {
        name: "a young urban professional with a great disposible income";
        status: "millenials have hard enough time finding steady work, they aren't yuppies usually"
        greeting() {
            console.log(`well hey there $(name)!!`)
    };
}

for (let crewMember in spaceship.crew) {
    console.log(`${crewmember}: ${spaceship.crew[crewmember].name}`)
};

- the for... in statement prints out key:value pairs for each crewmember (each object nested in the spaceship.crew object). 

#### This Keyword
- use to reference other properties within the same object
- you can NOT use the this keyword with an arrow function. why?
    - the answer is a bit complex. When you use the this keyword in a non-arrow function, this is referencing the calling object, which is the the object to which the function belongs. 
    - however, arrow functions by default bind a this value to the function that is not the calling object, but rather to a global object that does not have the properties of the calling object.

#### Privacy
- we only want certain properties to be mutable within objects.
- JavaScript doesn't have any built-in ways to indicate privacy, so instead developers use conventions to indicate the privacy status of a property
- we use the _ symbol in front of properties to indicate their anonymity

#### Classes
- Classes are templates for objects
- classes allow us to use inheritance and static methods, ways of reducing duplicate code and debugging time


i.e. 
class Pie {
    constructor(ingredient) {
        this._ingredient = ingredient;
        this._quantity = 0;
    }

    get ingredient() {
        return this._ingredient;
    }

    makePie() {
        this._quantity ++
    }
}

- a constructor is one thing that differentiates an object and a class. a constructor determines which parameters must be supplied when creating an instance of a class. It also declares other properties within the object. It is similar to the __init__() method in python.
- an instance of the class contains all the properties and methods of a class, with unique property names defined when the instance is created.
- in a class, methods are the same as in objects except you must use semi-colon to separate methods.
#### Creating an instance

`let Pie1 = new Pie(maple)`

### Utilizing Inheritance 
- when multiple classes share many of the same properties and methods, we can use inheritance.
- we make a parent class with all the properties and methods that apply to all child classes
- then we can extend the parent class to build more methods or properties into the child classes:

class Dough extends Pie {
    constructors(ingredient, baketime) {
        super(ingredient);
        this._baketime = baketime;
        this._done = False;
    }
}

- subclasses can also contain their own getter setter or methods. 

#### Static Methods in Classes
- methods that are available only callable directly from the class, not from instances of the class
- for example, you can create a static method that will generate a random number when called on the Parent class



### Getters and Setters
- getters are special methods that get and return the value of properties in an object
- setters are special methods that reassign the value of an existing properties. useful for private properties in which the type must be verified.

get/set setter/gettername() {
     if (verify informaiton) 

     }
}

## Promises
- Asynchronous operations allow the computer to move on to other tasks while it waits for others to complete. 
- In JavaScript ES6 the promise object represents the eventual outcome of an asynchronous operation. 
- A promise will be in one of three states:
    1. Pending
    Settled:
    2. Fulfilled
    3. Rejected

- executor functions indicate what the outcomes of a Promise being fulfilled or rejected should be. 
- it has two parameters, the resolve() and the reject() functions
- when the Promise constructor runs, JavaScript runs built in resolve() and reject() functions
- resolve() changes the promise's status to fulfilled
- reject() changes the promise's status to rejected


.then(successHandlerCallbackFunction) 
.catch(failureCallbackFunction)

- Chaining multiple promises is called composition
- if order doesn't matter, concurrency, multiple asynchronous functions happening simultaneously

Promise.all([promiseFunciton1, ])

### Factory Functions
- if we want to make many objects with the same properties, we can construct a factory function to quicken the process.
i.e. 

const factoryFunction = (param1, param2, param3) => {
    return {
        param1: param1,
        param2: param2,
        param3: param3,
        method() {
            methoddoes..
        }
    }
}

const factoryInstance = factoryFunction(p1, p2, p3)

- we can also use property value shorthand which will reduce the keystrokes needed to write a factory function. to use this shorthad, just leave out the values in the key:value pairs!


### Destructure Assignment
- pulling a property out of an object and into its own variable need not be laborious!
- const {propertyToPull} = objectname.includeIfNestedInAnotherObject

### Built-in Object Models
- there are a bunch. read the Docs. 
- a few include the assign(), keys(), and entries() docs.

#### Bracket Notation
- you can also access values using bracket notation.
- this is necessary when the key has special characters, spaces, or numbers
ie. iceCream["bestOne"];



### Debugging help
- typeof operator - use to check the type of a varible i.e
`const unknown = "hello"`
`console.log(typeof unknown)`
- returns the dataype of the variable




