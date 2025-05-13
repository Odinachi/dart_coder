# Input and Output

Imagine you're at a candy shop 🍭. The shopkeeper asks, "What candy do you want?" and you say "Chocolate!"

That’s **input** — you’re **giving information** to the program.

---

## 📢 What is Output?

Now imagine the shopkeeper gives you the chocolate and says, "Here you go!" — that’s **output** — the program **shows
something** to you.

---

## 🖨️ Output in Dart: `print()`

To **show something**, we use `print()`:

```dart
void main() {
  print('Hello, friend!'); // Output: Hello, friend!
}
```

Dart prints that message for you to see.

---

## 🎤 Input in Dart (in Console Apps)

To **ask the user something**, we can use Dart's `stdin.readLineSync()` — but we need to import `dart:io` first.

```dart
import 'dart:io';

void main() {
  print('What is your name?');
  String? name = stdin.readLineSync();
  print('Hello, $name!');
}
```

- `import 'dart:io';` tells Dart we want to use input features.
- `stdin.readLineSync()` waits for the user to type something.
- We store the input in a variable (`name`) and use it later!

---

## 🧁 Real-Life Example

You: 🗣️ “I want cookies!”
Dart: 👂 (listens)
Dart: 🗣️ “Hello, I heard you want cookies!”

In code:

```dart
import 'dart:io';

void main() {
  print('What do you want?');
  String? snack = stdin.readLineSync();
  print('Yum! I heard you want $snack!');
}
```

---

## 🧠 Note

In mobile apps, we don't use `stdin` — instead we use buttons, text fields, etc. But for learning Dart in a console,
this is how input/output works.

---

## 💡 Summary

- `print()` is how Dart **talks** to you (output).
- `stdin.readLineSync()` is how Dart **listens** to you (input).
- It's like a fun chat between you and Dart!

So remember: **Input is you talking to Dart, and Output is Dart talking back!** 🗣️👂🎉
