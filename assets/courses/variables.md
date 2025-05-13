# Variables

Imagine you have a box. You can put your toy car in it, close the box, and give the box a name like "myBox". Later, you
can open "myBox" and take out the toy car.

In Dart, a **variable** is like that box. It **holds a value**, like a number or a word, and we can **give it a name**.

---

## 📦 Real-Life Example

```dart
void main() {
  var myBox = 'toy car';
  print(myBox); // Output: toy car
}
```

Here:

- `var` means we’re making a new box.
- `myBox` is the name of the box.
- `'toy car'` is what’s inside the box.
- `print(myBox)` means “open the box and show what’s inside!”

---

## 🧱 Data Types — What Can Go in a Box?

Different boxes hold different things. Let’s look at what kind of boxes Dart has:

---

### 🧮 Numbers (`int`, `double`)

```dart

int age = 5;
double height = 3.5;

print(age); // 5

print(height); // 3.5
```

- `int` is for whole numbers (like 1, 2, 3).
- `double` is for numbers with a dot (like 2.5, 7.1).

---

### 🔤 Text (`String`)

```dart

String name = 'David';

print(name); // David
```

- A `String` is text, wrapped in single or double quotes.

---

### ✅ True or False (`bool`)

```dart

bool isHappy = true;

print(isHappy); // true
```

- `bool` is short for **boolean**, and it only has two values: `true` or `false`.

---

## 🍬 Why Use Data Types?

It helps Dart know **what’s inside the box** so it knows what it can do with it.

For example:

```dart

int number = 10;
print(number+5); // 15
```

You can **add** numbers, but you can’t add `true` + `"car"` — that would confuse Dart!

---

## 🧁 Using `var` to Let Dart Guess

```dart

var candy = 'lollipop'; // Dart knows this is a String
var count = 3; // Dart knows this is an int
```

---

## 💡 Summary

- Variables are like boxes with names.
- You can store numbers, text, true/false in them.
- Dart has special box types called **data types**.
- `var` lets Dart figure out the box type for you!

So remember: **Variables help Dart remember stuff — just like your toy boxes help you keep your toys safe!** 🎁
