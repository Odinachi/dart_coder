# Comments

Imagine you're drawing a picture and you write a little note to tell people what it is.

For example: “This is a dog 🐶” — that little note doesn’t change the picture, it just **helps people understand**.

In Dart, a **comment** is a little note you write in your code to **explain things**. Dart sees it, but **doesn't do
anything with it**.

---

## ✏️ 1. Single-Line Comment

To write a short note, use `//` before your words:

```dart
void main() {
  // This is my favorite number
  print(7);
}
```

Dart will ignore the comment and just print 7.

---

## 📄 2. Multi-Line Comment

For longer notes, use `/*` to start and `*/` to end:

```dart
void main() {
  /* I like ice cream,
     especially chocolate 🍫 */
  print('Yum!');
}
```

You can write many lines inside!

---

## 🤖 Dart Ignores Comments

```dart
void main() {
  // print(10); // This line won’t run
  print(5); // Only this line runs
}
```

Only the lines **not commented** will run.

---

## 💡 Why Use Comments?

- To remind yourself what your code does.
- To help your friends understand your code.
- To hide some lines without deleting them.

---

## 🎨 Real-Life Example

Like a teacher writing notes on your drawing:

```dart
void main() {
  // Start the magic trick 🎩✨
  print('Abracadabra!');

  // Pull a rabbit from the hat 🐇
  print('🐇 appears!');
}
```

The program runs the `print()` lines, but skips the comments.

---

## 🧁 Summary

- Comments are little notes in your code.
- Use `//` for one line.
- Use `/* ... */` for many lines.
- Dart skips them when running the code.

So remember: **Comments are like whispering secrets to your future self and friends, but Dart never listens! 🤫**
