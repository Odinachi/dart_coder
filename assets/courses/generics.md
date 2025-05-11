# Generics

Imagine you have a **magic toy box** 🧰.
You can fill it with **anything** — toy cars 🚗, dolls 👧, Legos 🧱, or even snacks 🍪!

But… if you say,

> “This box is only for toy cars,”

Then nobody puts snacks in it by mistake.

👉 That’s **Generics** in Dart!

> “A way to tell Dart **what type of thing** you want in a box — so it keeps things safe and neat.”

---

## 🎁 Real-Life Analogy

| Real Life                          | Dart Code        |
|------------------------------------|------------------|
| Toy box for **only dolls** 👧      | `Box<Doll>`      |
| Jar for **only cookies** 🍪        | `Box<Cookie>`    |
| Puzzle board with **any shape** 🧩 | `PuzzlePiece<T>` |

---

## 🧰 Basic Dart Example Without Generics

```dart
class ToyBox {
  Object? toy;

  void put(Object newToy) {
    toy = newToy;
  }

  Object? get() {
    return toy;
  }
}
```

### ❗ Problem:

You can accidentally put the **wrong thing** inside and Dart won’t complain until it breaks.

---

## ✅ Now with Generics: Safe and Smart

```dart
class ToyBox<T> {
  T? toy;

  void put(T newToy) {
    toy = newToy;
  }

  T? get() {
    return toy;
  }
}
```

> `T` means: "You tell me what **type** you want to use."

---

## 🧒 Let’s Use the ToyBox

```dart
void main() {
  var carBox = ToyBox<String>(); // Only strings (e.g., car names)
  carBox.put('Red Racing Car');
  print('Inside the box: ${carBox.get()}');

  var numberBox = ToyBox<int>(); // Only numbers
  numberBox.put(42);
  print('Magic number: ${numberBox.get()}');
}
```

### 🧠 Output:

```
Inside the box: Red Racing Car
Magic number: 42
```

Now Dart knows **exactly what type** is inside each box — no confusion!

---

## 💡 Why Use Generics?

| Without Generics           | With Generics            |
|----------------------------|--------------------------|
| Dart doesn’t know the type | Dart knows what’s inside |
| You need to cast manually  | No casting needed        |
| Bugs might happen 🐞       | Bugs are less likely ✅   |

---

## 🎯 Generics with Lists

```dart

List<int> numbers = [1, 2, 3];
List<String> names = ['Alice', 'Bob'];

print
(
numbers[0] + 2); // Safe math ✅
print(names[
0
]
.
toUpperCase
(
)
); // Safe string ✅
```

Without generics, Dart wouldn’t know what type is inside the list!

---

## 🧩 More Fun: Generic Functions

```dart
T pickFirst<T>(List<T> items) {
  return items[0];
}

void main() {
  print(pickFirst<int>([10, 20, 30])); // 10
  print(pickFirst<String>(['A', 'B', 'C'])); // A
}
```

> The function works for **any type**, but safely!

---

## 🧠 What Does `<T>` Mean?

* `<T>` = “Type Placeholder”
* You can use `<T>`, `<E>`, `<K, V>`, etc.
* Dart replaces `T` with the real type you give it (like `int`, `String`, etc.)

---

## 📦 Summary

| Word         | What It Means                               |
|--------------|---------------------------------------------|
| `Generic<T>` | A smart box that only holds one **type**    |
| `T`          | A placeholder for the type you want to use  |
| `List<T>`    | A list of things that are all the same type |
| `Map<K, V>`  | A map where key is `K` and value is `V`     |
| Safe typing  | Fewer bugs, more safety                     |

---

## 🎉 Final Thoughts

Generics are like **labeled toy boxes**:
You tell Dart exactly what you want inside, and it keeps everything organized, safe, and fun!

> “It’s like telling your little brother:
> ‘This box is **only for Legos**, not for cookies!’” 🍪🚫🧱✅

