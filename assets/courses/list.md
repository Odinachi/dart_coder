# Lists

## 📦 What is a List?

Imagine you have a toy box. Inside, you put:

* 🧸 Teddy
* 🚗 Car
* 🪀 Yo-yo

All your toys are in **one big box**. That box is called a **List** in Dart!

👉 A **List** is a **collection** — a way to keep **many things together** in one place!

---

## 🎁 Dart List Example

```dart
void main() {
  List<String> toys = ['Teddy', 'Car', 'Yo-yo'];

  print(toys);
}
```

🧠 Dart puts all your toys in a box and prints them out:

```
[Teddy, Car, Yo-yo]
```

---

## 🔢 Lists Are Numbered!

Each toy in your box has a **number**, starting at 0:

| Index | Item  |
|-------|-------|
| 0     | Teddy |
| 1     | Car   |
| 2     | Yo-yo |

You can get any toy by its number:

```dart
print
(
toys
[
1
]
); // prints: Car 🚗
```

---

## 🎨 Add New Toys

Want to add more toys to the box?

```dart
toys.add
('Puzzle
'
);print(
toys
); // [Teddy, Car, Yo-yo, Puzzle 🧩]
```

---

## ❌ Remove a Toy

Time to give a toy to a friend?

```dart
toys.remove
('Car
'
);print(
toys
); // [Teddy, Yo-yo, Puzzle]
```

---

## 🔁 Look at Every Toy

Want to show all your toys one by one?

```dart
for (String toy in toys) {
print('This is my $toy');
}
```

Output:

```
This is my Teddy
This is my Yo-yo
This is my Puzzle
```

---

## 💡 Summary

* A **List** is like a toy box 📦
* You can **add**, **remove**, or **get** toys by number!
* Use Lists when you want to keep **many things in one place**

🎉 So remember: **Lists are Dart’s way of holding a bunch of fun stuff — just like your toy box!**

