# Operators

## 🎮 What Are Operators?

Imagine you’re playing with toy blocks. You have:

- 2 red blocks
- 3 blue blocks

If you **add** them together, you get 5 blocks.

That “+” sign is called an **operator** — it tells Dart what to do with values, like adding, taking away, checking, and
more!

---

## ➕ 1. Math Operators (Arithmetic)

These are like math in school:

```dart
void main() {
  print(2 + 3); // 5
  print(5 - 2); // 3
  print(4 * 2); // 8
  print(10 / 2); // 5.0
}
```

- `+` means add
- `-` means subtract
- `*` means multiply
- `/` means divide

---

## 🧮 2. Modulo Operator (`%`)

This tells you what’s **left over** after dividing.

```dart
print
(7 %
2
); // 1 (because 2 goes into 7 three times, and 1 is left)
```

---

## 👀 3. Comparison Operators

These help Dart ask **yes or no** questions (true or false):

```dart
print
(5 >
3
); // true (5 is bigger than 3)
print(4 < 2); // false (4 is not smaller than 2)
print(6 == 6); // true (they’re equal)
print(7 != 5); // true (they are different)
```

- `>` means greater than
- `<` means less than
- `==` means equal to
- `!=` means not equal

---

## 🔧 4. Assignment Operators

These are like **giving a box a new value**:

```dart

int x = 5; // set x to 5
x += 2; // add 2 to x (now x is 7)
x *= 3; // multiply x by 3 (now x is 21)
print(x);
```

---

## 🚦 5. Logical Operators

These are like traffic lights — they help make decisions:

```dart

bool hasCandy = true;
bool isHappy = true;

print
(
hasCandy && isHappy); // true (both are true)
print(hasCandy || false); // true (one is true)
print
(
!
isHappy
); // false (the opposite)
```

- `&&` means "and"
- `||` means "or"
- `!` means "not"

---

## 💡 Summary

- Operators help Dart **do things** like math, comparisons, or logic.
- They are like action signs: + - * / > < == !=
- Dart uses them to figure things out and make decisions!

So remember: **Operators tell Dart how to play with your values — just like your hands play with toy blocks!** 🧱
