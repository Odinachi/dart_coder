# For Loops

Imagine your teacher says: "Color 5 stars ⭐⭐⭐⭐⭐"

You start with the first one, then the second, third… until you finish all 5!

That’s a **for loop** — it helps Dart **do something again and again**, for a certain number of times!

---

## 🎨 For Loop in Dart

```dart
void main() {
  for (int i = 0; i < 5; i++) {
    print('Coloring star number ${i + 1} ⭐');
  }
}
```

Let’s break it down:

- `int i = 0;` → Start at 0 (like the first star)
- `i < 5;` → Stop when you reach 5 stars
- `i++` → Go to the next star each time

🪄 Dart says: “As long as `i` is less than 5, keep coloring!”

---

## 🧁 Real-Life Example: Giving Out Cupcakes

```dart
void main() {
  for (int i = 1; i <= 3; i++) {
    print('Giving cupcake number $i 🧁');
  }
}
```

This gives out 3 cupcakes — one after another!

---

## 🚀 Count Backward Too!

You can even go **backwards** like countdown:

```dart
void main() {
  for (int i = 5; i > 0; i--) {
    print('Countdown: $i 🚀');
  }
}
```

---

## 💡 Summary

- **For loops** repeat tasks a **set number of times**
- Start from a number → Do something → Move to next
- It’s like coloring many stars or giving out cupcakes one by one!

So remember: **For loops help Dart do things again and again — just like you following steps in a game! 🎮**
