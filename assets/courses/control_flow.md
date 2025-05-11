# Control Flow

## 🎮 What is Control Flow?

Imagine you're playing a game, and the game says:

- If you have a red key, go into the red door 🚪🔴
- If you have a blue key, go into the blue door 🚪🔵
- If you don’t have a key, stay outside 🚫

That’s **control flow** — it tells Dart **what to do and when to do it**, based on different situations.

---

## 🔀 1. If Statements

"If" is like asking a question and choosing a path.

```dart
void main() {
  int age = 5;

  if (age >= 5) {
    print('You can go on the ride! 🎢');
  } else {
    print('You’re too small for this ride. 🧸');
  }
}
```

- If the age is 5 or more, you get to ride.
- Else (otherwise), you wait.

---

## 🧩 2. Else If

You can add more paths!

```dart
void main() {
  String color = 'green';

  if (color == 'red') {
    print('Stop! 🛑');
  } else if (color == 'yellow') {
    print('Slow down! 🐢');
  } else if (color == 'green') {
    print('Go! 🏃‍♂️');
  } else {
    print('Unknown color!');
  }
}
```

---

## 🔁 3. Loops: Doing Things Again and Again

Let’s say you want to clap your hands 5 times 👏

### For Loop

```dart
void main() {
  for (int i = 0; i < 5; i++) {
    print('Clap! 👏');
  }
}
```

- Starts from 0
- Goes until 4 (less than 5)
- Adds 1 every time

### While Loop

```dart
void main() {
  int i = 0;
  while (i < 3) {
    print('Hop! 🐰');
    i++;
  }
}
```

---

## 🧠 Summary

- **Control flow** helps Dart **make decisions**.
- Use `if`, `else if`, and `else` to choose what to do.
- Use **loops** to repeat actions again and again.

So remember: **Control flow is like choosing what to do in a game — Dart follows your rules! 🎮**
