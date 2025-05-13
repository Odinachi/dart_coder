# Collection Methods

Imagine you have a **box of toys** 🧸🪀🎲, and you want to:

* Paint each toy a new color 🎨
* Keep only the soft toys 🧸
* Count how many toys you have 🔢

Collection methods help you **do all of these things** with Dart's **lists**, **sets**, and **maps**. They're like your
**toy toolbox** — full of smart tools to work with your items quickly and safely.

---

## 🎁 Real-Life Analogy

| Real Life                      | Dart Code Equivalent  |
|--------------------------------|-----------------------|
| Painting every toy in a box    | `map()`               |
| Keeping only soft toys         | `where()`             |
| Adding up all your toys        | `reduce()` / `fold()` |
| Checking if there's a red toy  | `any()`               |
| Making sure all toys are clean | `every()`             |
| Finding the first big toy      | `firstWhere()`        |

---

## 📦 Let's Open the Toolbox!

---

### 1. **`map()` – Change Each Item**

🧩 Imagine painting every toy a different color.

```dart
void main() {
  var numbers = [1, 2, 3];
  var doubled = numbers.map((n) => n * 2);

  print(doubled); // (2, 4, 6)
}
```

✅ You made each number **twice as big**. Just like adding glitter to every toy.

---

### 2. **`where()` – Keep Only Some**

🎯 Pick out only the blue toys from the toy box.

```dart
void main() {
  var numbers = [1, 2, 3, 4, 5];
  var evens = numbers.where((n) => n.isEven);

  print(evens); // (2, 4)
}
```

✅ You **filtered** the list — kept only the even ones.

---

### 3. **`reduce()` – Smash Everything Into One**

🧃 Like squeezing oranges to make one glass of juice.

```dart
void main() {
  var numbers = [1, 2, 3];
  var sum = numbers.reduce((a, b) => a + b);

  print(sum); // 6
}
```

✅ It **adds all numbers** into one total.

---

### 4. **`fold()` – Like reduce, but you choose the start**

📦 Start with an empty basket and add your apples.

```dart
void main() {
  var items = [1, 2, 3];
  var product = items.fold(1, (a, b) => a * b);

  print(product); // 6
}
```

✅ You started at `1` and **folded in** all the numbers.

---

### 5. **`any()` – Is There At Least One?**

🔍 Is there **any red toy**?

```dart
void main() {
  var colors = ['red', 'blue', 'green'];
  var hasRed = colors.any((color) => color == 'red');

  print(hasRed); // true
}
```

✅ Checks if **any** item matches.

---

### 6. **`every()` – Do All Match?**

🧼 Are **all toys clean**?

```dart
void main() {
  var clean = ['clean', 'clean', 'clean'];
  var allClean = clean.every((c) => c == 'clean');

  print(allClean); // true
}
```

✅ Checks if **all** items match the condition.

---

### 7. **`firstWhere()` – Get the First Match**

🚀 Find the first big toy in your box!

```dart
void main() {
  var sizes = [1, 5, 10, 2];
  var firstBig = sizes.firstWhere((n) => n > 5);

  print(firstBig); // 10
}
```

✅ Finds the **first** item that matches the rule.

---

### 8. **`take()` – Grab the First Few**

🍬 Take the first 3 candies from your bag.

```dart
void main() {
  var snacks = ['cookie', 'cake', 'chips', 'soda'];
  var few = snacks.take(2);

  print(few); // (cookie, cake)
}
```

---

### 9. **`skip()` – Leave Some Behind**

🚶 Skip the first 2 steps.

```dart
void main() {
  var steps = [1, 2, 3, 4, 5];
  var afterTwo = steps.skip(2);

  print(afterTwo); // (3, 4, 5)
}
```

---

### 10. **`forEach()` – Visit Each Item**

🧺 Say "hello" to every toy!

```dart
void main() {
  var animals = ['dog', 'cat', 'fish'];
  animals.forEach((animal) => print("Hello, $animal!"));
}
```

---

## 🧠 Summary

| Method         | What It Does (Simple Words)        |
|----------------|------------------------------------|
| `map()`        | Change each item                   |
| `where()`      | Keep only items that match a rule  |
| `reduce()`     | Combine all into one value         |
| `fold()`       | Like reduce, but you set the start |
| `any()`        | Is **at least one** item matching? |
| `every()`      | Do **all** items match?            |
| `firstWhere()` | Find the **first** matching item   |
| `take(n)`      | Take the **first n** items         |
| `skip(n)`      | Skip the **first n** items         |
| `forEach()`    | Do something with **each** item    |

---

## 🧺 Final Tip:

Collection methods make your Dart code:

* 💡 **Shorter**
* 🧼 **Cleaner**
* 🚀 **More powerful**

