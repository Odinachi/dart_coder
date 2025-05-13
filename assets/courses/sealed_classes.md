# Sealed Classes

Imagine you have a **magic book** 📚, and inside this book, only certain **special characters** are allowed to appear,
like superheroes or magical creatures! 🦸‍♂️🦄

You can **add new characters**, but only from a **limited list** of options. No random characters can just appear in
your story!

👉 **Sealed classes** in Dart work the same way.
They allow you to define a class, but only a **limited set of subclasses** can inherit from it. You **lock down** the
class, making sure only certain things can belong to it.

---

## 🎁 Real-Life Analogy

| Real Life                                     | Dart Code                                 |
|-----------------------------------------------|-------------------------------------------|
| A **magic book** with only allowed characters | Sealed class with limited subclasses      |
| Only certain **superheroes** in a comic book  | Only allowed subclasses in a sealed class |
| A **secret club** with strict rules           | A class that only specific types can join |

---

## ❌ Before: Regular Class Inheritance

Let’s say you have a class called `Animal`, and everyone can make new types of animals!

```dart
class Animal {
  void makeSound() {
    print("Animal sound!");
  }
}

class Dog extends Animal {
  void makeSound() {
    print("Woof!");
  }
}

class Cat extends Animal {
  void makeSound() {
    print("Meow!");
  }
}

void main() {
  Animal dog = Dog();
  dog.makeSound(); // Woof!

  Animal cat = Cat();
  cat.makeSound(); // Meow!
}
```

This is fine, but anyone can keep **adding** more animals forever.

---

## ✅ With Sealed Class: Limited Subclasses

Let’s create a **sealed class** for `Animal` where we **only allow dogs and cats**:

```dart
sealed class Animal {
  void makeSound();
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Woof!");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow!");
  }
}

void main() {
  Animal dog = Dog();
  dog.makeSound(); // Woof!

  Animal cat = Cat();
  cat.makeSound(); // Meow!
}
```

Now, **only dogs and cats** can be animals! You can’t add new types of animals unless they are allowed by the magic
class.

---

## 🎨 More Fun: Sealed Classes for Vehicles

Let’s create a **sealed class** for `Vehicle` and allow only `Car` and `Bicycle`:

```dart
sealed class Vehicle {
  void drive();
}

class Car extends Vehicle {
  @override
  void drive() {
    print("Driving a car!");
  }
}

class Bicycle extends Vehicle {
  @override
  void drive() {
    print("Riding a bicycle!");
  }
}

void main() {
  Vehicle car = Car();
  car.drive(); // Driving a car!

  Vehicle bike = Bicycle();
  bike.drive(); // Riding a bicycle!
}
```

If we try to add a new vehicle, like a `Boat`, Dart will **prevent** it from happening!

---

## 🧒 Why Use Sealed Classes?

* **Restrict inheritance**: You can control exactly which classes can extend the sealed class.
* **Safety**: Less chance of bugs because only a predefined set of classes are allowed.
* **Better design**: Helps with cleaner and more manageable code.

---

## 📦 Summary

* **Sealed classes** are like **magical books** or **secret clubs**: You define a class, but only certain subclasses can
  join.
* They help you **restrict inheritance**, making your code **more controlled** and **safe**.
* You can use sealed classes when you want **limited, controlled extensions** and want to avoid random changes.
* Syntax: `sealed class ClassName { ... }`.

