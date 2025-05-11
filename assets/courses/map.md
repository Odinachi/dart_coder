# Maps

## 🗺️ What is a Map?

Imagine a **treasure map** 🗺️

Each spot has a label (like “X” or “Tree”) and a hidden treasure behind it:

* **"X" → Gold**
* **"Tree" → Candy**
* **"Cave" → Toys**

You use the label to **find what’s there**.

That’s what a **Map** in Dart is:
👉 A **Map is like a box with labels**.
Each label (called a **key**) points to something (called a **value**).

---

## 📦 Dart Map Example

```dart
void main() {
  Map<String, String> treasureMap = {
    'X': 'Gold',
    'Tree': 'Candy',
    'Cave': 'Toys',
  };

  print(treasureMap);
}
```

Output:

```
{X: Gold, Tree: Candy, Cave: Toys}
```

---

## 🗝️ Get Something from a Map

To find out what's under the "Tree":

```dart
print
(
treasureMap
[
'
Tree
'
]
); // prints: Candy 🍬
```

You're using the **key** ("Tree") to get the **value** ("Candy")!

---

## ➕ Add to the Map

You find another spot on the map:

```dart
treasureMap['
River']
=
'
Fish';

print(treasureMap);
```

Now your map has:

```
{X: Gold, Tree: Candy, Cave: Toys, River: Fish}
```

---

## ❌ Remove a Key

Someone stole your gold! 😱

```dart
treasureMap.remove
('X
'
);

print(
treasureMap
);
```

Gold is gone:

```
{Tree: Candy, Cave: Toys, River: Fish}
```

---

## 🔁 Loop Through a Map

You can look at everything on your map:

```dart
treasureMap.forEach
(
(key, value) {
print('$key has $value');
});
```

Output:

```
Tree has Candy
Cave has Toys
River has Fish
```

---

## 💡 Summary

* A **Map** is like a treasure map 🗺️
* You use a **key (label)** to find a **value (thing)**
* Perfect when things need names or labels

🎉 So remember: **Maps in Dart help you find the treasure behind every label! 🗝️💰**

