# Sets

Imagine you’re collecting apples 🍎

You only want **one of each color**:

* ❤️ Red Apple
* 💚 Green Apple
* 💛 Yellow Apple

If someone tries to give you **two red apples**, you say:

> “Nope! I already have a red one!”

That’s what a **Set** in Dart does:
👉 It **stores items** but **never allows duplicates!**

---

## 🧺 Dart Set Example

```dart
void main() {
  Set<String> apples = {'Red', 'Green', 'Yellow'};

  print(apples);
}
```

Output:

```
{Red, Green, Yellow}
```

Now if you add another `'Red'`:

```dart
apples.add('Red');
print(apples);
```

Output is still:

```
{Red, Green, Yellow}
```

❗ Dart says: “You already have that!”

---

## 🎮 Real-Life Example: Unique Game Cards

Let’s say you’re collecting game cards, but only want **1 of each kind**:

```dart
void main() {
  Set<String> cards = {'Dragon', 'Wizard'};

  cards.add('Dragon'); // already in the set
  cards.add('Knight');

  print(cards); // {Dragon, Wizard, Knight}
}
```

🎉 Even if you try to add `Dragon` again, the set won’t allow it!

---

## 📏 Sets Have No Order

Unlike lists (which have order), Sets **don’t care about the order** of items:

```dart

Set<String> animals = {'Cat', 'Dog', 'Bird'};

print(animals); // Might be printed as: {Dog, Cat, Bird}
```

⚠️ You can’t say: `animals[0]` — Sets don’t use index numbers like Lists.

---

## ✅ When to Use Sets

* When you **don’t want duplicates** ❌❌
* When **order doesn’t matter**
* When you just want to say “I have this thing (or not)” ✅

---

## 💡 Summary

* A **Set** is like a box where you only keep **one of each item**
* Dart **ignores repeats**
* Great for collections where you want everything to be **unique**

🎉 So remember: **Sets are like your apple basket — only one of each kind allowed! 🍎🍏🍋**

