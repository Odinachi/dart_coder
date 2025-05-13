# Inheritance

Imagine your **dad is a superhero** 🦸‍♂️
He can **fly**, he’s super **strong**, and he **saves people**.

Now imagine **you’re his child** 👧 — and you also get some of his powers!

That’s what **Inheritance** is in Dart:

👉 It’s when **one class (the child)** gets all the stuff from **another class (the parent)** — like superpowers 🦸‍♀️💪

---

## 🦸 Parent Class

Let’s make a class for SuperDad:

```dart
class SuperDad {
  void fly() {
    print('Flying high in the sky! ☁️');
  }

  void savePeople() {
    print('Saving people from danger! 🛡️');
  }
}
```

This is the **parent class** — it has all the superhero powers!

---

## 🧒 Child Class (Inherits)

Now let’s make a **child class** that **inherits** from SuperDad:

```dart
class SuperKid extends SuperDad {
  void play() {
    print('Playing with toys 🧸');
  }
}
```

See the `extends` keyword?
It means: “I want everything SuperDad has!”

---

## 👨‍👧 Now Use the Child Class

```dart
void main() {
  SuperKid kid = SuperKid();

  kid.play(); // Child’s own ability
  kid.fly(); // Inherited from SuperDad
  kid.savePeople(); // Inherited from SuperDad
}
```

Output:

```
Playing with toys 🧸
Flying high in the sky! ☁️
Saving people from danger! 🛡️
```

🎉 SuperKid can **play** and also **fly** like Dad!

---

## 🧠 Why Use Inheritance?

* To **reuse code** instead of writing the same things again
* To **organize** related classes (like SuperDad → SuperKid)
* To add **new abilities** to child classes while keeping the old ones

---

## 🔁 Override Powers (Make Them Your Own)

SuperKid wants to fly **faster** than Dad:

```dart
class SuperKid extends SuperDad {
  @override
  void fly() {
    print('Zooming through the sky! 🛩️');
  }
}
```

Now when `kid.fly()` is called:

```
Zooming through the sky! 🛩️
```

💡 This is called **overriding** — changing the parent’s behavior in the child.

---

## 🧠 Summary

| Term         | Means...                                         |
|--------------|--------------------------------------------------|
| `extends`    | Child class **inherits** from parent             |
| `override`   | Child class **changes** a method from the parent |
| Parent Class | The **original** class (like SuperDad)           |
| Child Class  | The one that **inherits** (like SuperKid)        |

---

## 🎉 So remember:

**Inheritance is like getting superpowers from your superhero parents! 🦸‍♂️🦸‍♀️**

