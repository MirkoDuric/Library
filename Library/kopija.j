// SIGN UP
const signUp = document.getElementById("signup");
const users = [];
// FUNKCIJA DODATI KORISNIKA
signUp.addEventListener("click", () => {
  addUser();
});
// FUNKCIJA OBRISATI KORISNIKA
const deleteUser = document.getElementById("deleteUser");
deleteUser.addEventListener("click", () => {
  removeUser();
});

// FUNKCIJA ZA DODATI KORISNIKA
function addUser() {
  let name = prompt("Please enter your username.");
  let dateBirth = prompt("Please enter your date of birth.");
  if (name !== null && name !== "") {
    alert(name);
  }
  if (dateBirth !== "" || dateBirth !== null) {
    alert(dateBirth);
  }
  if (name !== null && name !== "" && dateBirth !== null && dateBirth !== "") {
    let newUser = {
        name: name,
        dateOfBirth: dateBirth,
      }
    }
    users.push(newUser);
    addUserToUserTable(newUser);
}

// TODO: napraviti odvojenu funkciju does user exists
function addUserToUserTable(user) {
    const userTable = document.getElementById("userTableBody");
    let row = userTable.insertRow();
    let name = row.insertCell(0);
    name.innerHTML = user.name;
    let btn = row.insertCell(1);
    btn.innerHTML = table.deleteRow;
  // TODO:povezati sa rentanjem knjige
    let nrOfBooks = row.insertCell(1);
}

// FUNKCIJA OBRISATI KORISNIKA
function removeUser() {
    let nameToBeDeleted = document.getElementById("deleteUsername");
    let dateOfBirthToBeDeleted = document.getElementById("deleteDateOfBirth");
    if (deleteUsername !== "" && deleteUsername !== null) {
    let toBeDeleted = {
    name: nameToBeDeleted,
    dateOfBirth: dateOfBirthToBeDeleted,
    };
    deleteUserFromTable(toBeDeleted);
}
}
// TODO:doraditi finkciju kako bi brisala tacnog usera sa username i datum rodjenja. URADITI REMOVE BUTTON
function deleteUserFromTable(_toDelete) {
  const userTable = document.getElementById("userTableBody");
  let row = userTable.deleteRow(0);
  let name = row.deleteCell(0);
}

// BOOKS IN LIBRARY
let ourBooks = [
  {
    name: "Harry Potter and Philosophers Stone",
    author: "J.K. Rowling",
    books: 14,
    onStock: 14,
  },
    {
    name: "1984",
    author: "George Orwell",
    books: 20,
    onStock: 20,
  },
  {
    name: "The Road To Wigan Pier",
    author: "George Orwell",
    books: 5,
    onStock: 5,
  },
  {
    name: "War and Peace",
    author: "Leo Tolstoy",
    books: 7,
    onStock: 7,
    },
    {
    name: "Harry Potter and Half-Blood Prince",
    author: "J.K. Rowling",
    books: 4,
    onStock: 4,
  },
  {
    name: "Anna Karenina",
    author: "Leo Tolstoy",
    books: 4,
    onStock: 4,
  },
];
// POPUNJAVANJE TABELE KNJIGA
let table = document.getElementById("booksTableBody");
for (let obj of ourBooks) {
  let tr = table.insertRow();
  tr.insertCell().textContent = obj.name;
  tr.insertCell().textContent = obj.author;
  tr.insertCell().textContent = obj.books;
  tr.insertCell().textContent = obj.onStock;
}

// FUNKCIJA USER RENTING AND SUBSTRACTING FROM BOOKS

// TODO:dva dropdowna za knjigu i usera => rent/return
let selectUser = document.getElementById("dropdownUsername");
let selectBook = document.getElementById("dropdownBook");
for(let i = 0; i < users.length; i++){
  let opt = users[i].name;
  let el = document.createElement('option');
  el.textContent = opt;
  el.value = opt;
  selectUser.appendChild(el);
}