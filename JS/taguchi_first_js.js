let age = 23;
const name = 'taguchi';
const color = 'green';
console.log　(name,age);
if (age >= 20) {
    console.log('my age is bigger than 20');
} if (age >= 10) {
    console.log('my age is smaller than 20 and bigger than 10');
} else {
    console.log('I forget my age');
}

switch(color) {
    case 'green':
        console.log('my favorite color is green');
        break;
    case 'red':
        console.log('my favorite color is red');
        break;
}

const object = {
    object_name: taguchi,
    object_age: (year)=> {
        return year - 2001;
    },
    object_greet: () => {
        console.log('hello world');
    }
}
console.log(object.object_name,object.object_age(2025),object.object_greet);

class Animal {
    constructor(name, age) {
      this.name = name;
      this.age = age;
    }
    
    greet() {
      console.log("こんにちは");
    }
    
    info() {
      this.greet();
      console.log(`名前は${this.name}です`);
      console.log(`${this.age}歳です`);
    }
  }
  
  class Dog extends Animal {
    // constructorを追加してください
    constructor (name, age, breed){
      super(name,age);
      this.breed = breed;
    }
    info() {
      this.greet();
      console.log(`名前は${this.name}です`);

      console.log(`犬種は${this.breed}です`);
      
      console.log(`${this.age}歳です`);
      const humanAge = this.getHumanAge();
      console.log(`人間年齢で${humanAge}歳です`);
    }
    getHumanAge() {
      return this.age * 7;
    }
  }
  const dog = new Dog("レオ", 4,'チワワ');
  dog.info();

 import { dog1, dog2 } from "./data/dogData";

  console.log("---------");
  dog1.info();
  console.log("---------");
  dog2.info();

const characters2 = ["にんじゃわんこ", "ベイビーわんこ", "ひつじ仙人"];

console.log(characters);

// pushメソッドを使って配列charactersに、文字列「とりずきん」を追加してください
characters.push('とりずきん'); 

// 配列charactersを出力してください
console.log(characters);

const characters3 = ["にんじゃわんこ", "ベイビーわんこ", "ひつじ仙人", "とりずきん"];

// forEachメソッドを使って、配列charactersの中身をすべて出力してください
characters.forEach((character) => {
  console.log(character)
});

const numbers1 = [1, 3, 5, 7, 9];

// findメソッドを使って配列numbersから3の倍数を見つけ、定数foundNumberに代入してください
const foundNumber = numbers.find((number) => {
  return number % 3 === 0;
});

// foundNumberを出力してください
console.log(foundNumber);


const characters4 = [
  {id: 1, name: "にんじゃわんこ", age: 6},
  {id: 2, name: "ベイビーわんこ", age: 2},
  {id: 3, name: "ひつじ仙人", age: 100},
  {id: 4, name: "とりずきん", age: 21}
];

// 定数charactersからidが3のオブジェクトを見つけ、定数foundCharacterに代入してください
const foundCharacter = characters.find((character) => {
  return character.id === 3;
});

// foundCharacterを出力してください
console.log(foundCharacter);

const numbers2 = [1, 2, 3, 4];

// filterメソッドを使ってnumbersから偶数を取り出し、定数evenNumbersに代入してください
const evenNumbers = numbers.filter((number) => {
  return number % 2 === 0;
});

// evenNumbersを出力してください
console.log(evenNumbers);


const characters = [
  {id: 1, name:"にんじゃわんこ", age: 14},
  {id: 2, name:"ベイビーわんこ", age: 5},
  {id: 3, name:"ひつじ仙人", age: 100}
];

// charactersから20歳未満のキャラクターを取り出し、定数underTwentyに代入してください
const underTwenty = characters.filter((character) => {
  return character.age < 20;
});

// underTwentyを出力してください
console.log(underTwenty);

const numbers = [1, 2, 3, 4];

// 定数numbersにmapメソッドを使って配列を作り、定数doubledNumbersに代入してください
const doubledNumbers = numbers.map((number) => {
  return number *2;
});

// 定数doubledNumbersを出力してください
console.log(doubledNumbers);


const names = [
  {firstName: "Kate", lastName: "Jones"},
	{firstName: "John", lastName: "Smith"},
	{firstName: "Denis", lastName: "Williams"},
	{firstName: "David", lastName: "Black"}
];

// 定数namesにmapメソッドを使って新しい配列を作り、定数fullNamesに代入してください
const fullNames = names.map((name) => {
  return name.firstName + name.lastName;
});

// 定数fullNamesを出力してください
console.log(fullNames);
