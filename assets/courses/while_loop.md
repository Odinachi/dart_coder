# While Loops

## 🐰 What is a While Loop?

Imagine you're a bunny 🐇 jumping over a fence. You jump **while** the sun is still out ☀️

As long as the sun is shining, you **keep jumping**!

That’s what a **while loop** does — Dart keeps doing something **as long as a condition is true**.

---

## 🐇 While Loop in Dart

```dart
void main() {
  int jumps = 0;

  while (jumps < 3) {
    print('Jump number $jumps 🐰');
    jumps++;
  }
}
```

### What’s happening?

- Start with `jumps = 0`
- While `jumps` is less than 3, Dart will:
    - Print the jump
    - Add 1 to `jumps`
- When `jumps` becomes 3, the jumping stops!

---

## 🧸 Real-Life Example: Picking Toys

Let’s say you’re picking toys from a toy box 🧺

```dart
void main() {
  int toys = 5;

  while (toys > 0) {
    print('Picked a toy! 🧸');
    toys--;
  }
}
```

You keep picking toys **while** there are still toys in the box!

---

## ⚠️ Watch Out!

Be careful not to forget the `jumps++` or `toys--`. If you don’t change the number, Dart will loop **forever**! 🔁😲

---

## 💡 Summary

- A **while loop** keeps going **as long as something is true**
- It's like saying: "Keep going while you can!"
- Perfect for when you **don’t know exactly∂ how many times** to do something

So remember: **While loops are like hopping bunnies — they go and go until it’s time to stop! 🐇🌙**
