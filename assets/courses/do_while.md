# Do-While Loops

## 🍪 What Is a Do-While Loop?

Imagine you’re at grandma’s house and she gives you a cookie 🍪

Even if you're full, you **must eat at least one** (because it's grandma!)

Then you check:

* Am I still hungry?
* If yes, eat another cookie!
* If no, stop eating.

That’s exactly how a **do-while loop** works:
👉 It **does something first**, then checks if it should do it again.

---

## 🧁 The Code Example

```dart
void main() {
  int cookiesEaten = 0;

  do {
    print('Eating cookie number ${cookiesEaten + 1} 🍪');
    cookiesEaten++;
  } while (cookiesEaten < 3);
}
```

### What It Does:

* Eats cookie #1 → checks → still wants more!
* Eats cookie #2 → checks → still wants more!
* Eats cookie #3 → checks → now full → stops.

✅ You always eat **at least one cookie**, even if you're already full.

---

## 🧃 Another Fun Example: Sipping Juice

```dart
void main() {
  int sips = 0;
  int maxSips = 2;

  do {
    print('Sip number ${sips + 1} 🧃');
    sips++;
  } while (sips < maxSips);
}
```

Even if your cup is empty, you **try to sip at least once**!

---

## 🔁 Compared to While Loop

| While Loop        | Do-While Loop            |
|-------------------|--------------------------|
| Checks *before*   | Does *before* checking   |
| Might run 0 times | Always runs **1 time** ✅ |

---

## 💡 Summary

* Use `do-while` when you want Dart to **always try once**
* It’s like saying: “Just take one bite first!”
* Great for games, tries, or checking things after doing them once.

