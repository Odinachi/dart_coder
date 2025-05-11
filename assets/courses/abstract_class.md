# Abstract Classes

Imagine you draw a **picture of an animal** 🐾

You know animals can:

* **make a sound**
* **move around**

But you don’t know **exactly** what sound or how each one moves.
A **dog barks**, a **cat meows**, a **fish swims** — they're all different!

So you draw a **basic idea** of an animal, and let the real animals fill in the details.

That’s what an **Abstract Class** is!

👉 It’s a **blueprint** that says:
“Every animal must make a sound — but I won’t tell you how. You decide later!”

---

## 🐾 Abstract Animal Example in Dart

```dart
abstract class Animal {
  void makeSound(); // No body here! Just an idea
}
```

💡 The `abstract` keyword means:

> You can’t make a real animal from this — just the **idea** of it.

---

## 🐶 Real Animals Use the Idea

Let’s create a **Dog** that follows the blueprint:

```dart
class Dog extends Animal {
  @override
  void makeSound() {
    print('Woof! 🐶');
  }
}
```

And a **Cat** too:

```dart
class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow! 🐱');
  }
}
```

---

## 🐾 Use the Real Animals

```dart
void main() {
  Dog dog = Dog();
  Cat cat = Cat();

  dog.makeSound(); // Woof! 🐶
  cat.makeSound(); // Meow! 🐱
}
```

---

## ❌ You Can’t Create an Abstract Animal Directly

This will cause an error:

```dart

Animal animal = Animal(); // ❌ ERROR!
```

🛑 Because an abstract class is just an **idea**, not a real thing.

---

## 💡 Summary

| Term               | Means...                                         |
|--------------------|--------------------------------------------------|
| `abstract`         | A **blueprint** with some missing pieces         |
| `void makeSound()` | An **abstract method** with no body              |
| `extends`          | A class **inherits** from an abstract class      |
| `@override`        | The child class **fills in the missing details** |

---

## 🎨 So remember:

* An **abstract class** is like drawing a plan — not a real thing yet
* It tells other classes: “You MUST do this, but YOU decide how”
* Great for **rules**, **guidelines**, and **shared behaviors**

🎉 Think of it like giving rules to all your toy animals — they all must make a sound, but they each choose what sound to
make!

