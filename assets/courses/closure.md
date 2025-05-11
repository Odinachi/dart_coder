# Closures

Imagine your **mom packs a snack** 🍪 for school in your lunchbox 🧺.

But instead of just giving you the snack, she also packs a **note** with a little **secret recipe** just for you.

Wherever you take your lunchbox — school, park, or grandma’s house — the **snack and the note stay together**.

👉 A **closure** is like that lunchbox:

> A function that **remembers** the **variables** from where it was created — even when used somewhere else!

---

## 🍪 Dart Example

```dart
Function packLunch() {
  String snack = 'Cookie';

  return () {
    print('Your snack is: $snack');
  };
}
```

Now when you call `packLunch()`, it gives you a **function** that remembers the `snack`.

```dart
void main() {
  var lunchbox = packLunch();
  lunchbox(); // Output: Your snack is: Cookie
}
```

Even though `snack` was made **inside** `packLunch()`, it’s still remembered inside `lunchbox()`.

🎉 That’s a closure!

---

## 🧮 Another Example: A Counter

```dart
Function createCounter() {
  int count = 0;

  return () {
    count++;
    print('Count is: $count');
  };
}
```

Now use it:

```dart
void main() {
  var myCounter = createCounter();

  myCounter(); // Count is: 1
  myCounter(); // Count is: 2
  myCounter(); // Count is: 3
}
```

Each time you call `myCounter()`, it **remembers** the old `count` and keeps adding!

---

## 🧠 Why Closures Are Cool

Closures:

* Remember their “snack” (variables)
* Let you **store values inside a function**
* Are great for **counters**, **timers**, and **custom tools**

---

## 💡 Summary

| Term    | Means...                                             |
|---------|------------------------------------------------------|
| Closure | A function that **remembers** variables from outside |
| `count` | Variable stored in the closure                       |
| `() {}` | Anonymous function (can become a closure!)           |

---

## 🎉 So remember:

A **closure** is like a lunchbox 🧺 that:

* Carries a function 🍽️
* Packs some secret ingredients 📝
* And remembers them wherever you go 🚶

It's your own little **memory helper** built into a function!

