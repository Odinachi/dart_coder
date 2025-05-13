# Mixins

Imagine you have a **dog** 🐶. Dogs can:

* Bark 🐾
* Run 🏃

But now, you want your dog to **fly like a superhero** 🦸
Instead of changing the dog into a superhero completely, you can just **add the flying power** like a sticker — just one
special ability!

👉 That flying sticker is a **Mixin**.

🧠 A **Mixin** is like a **power-up pack** — you can add it to any class to give it **extra abilities**!

---

## 🦸 Let’s Make a Flying Power Mixin

```dart
mixin CanFly {
  void fly() {
    print('Flying high in the sky! ☁️🛩️');
  }
}
```

This mixin says:

> "Hey, I can fly! Add me if you want to fly!"

---

## 🐶 Dog That Can Fly

Let’s give flying power to a **Dog**:

```dart
class Dog {
  void bark() {
    print('Woof! 🐶');
  }
}
```

Now let’s mix in the flying power:

```dart
class SuperDog extends Dog with CanFly {}
```

The `with` keyword means:

> “Add the fly ability from CanFly!”

---

## ✈️ Let the Dog Fly!

```dart
void main() {
  SuperDog dog = SuperDog();

  dog.bark(); // Woof!
  dog.fly(); // Flying high in the sky! ☁️🛩️
}
```

🎉 Your dog can now **bark AND fly**!

---

## 💡 Why Use Mixins?

Mixins let you:

* Add **features to classes** without inheritance
* **Reuse code** easily
* Keep your classes **clean and flexible**

---

## 🔐 Bonus: Mixin Rules

* You **can’t create objects** from a mixin directly (just like abstract classes)
* You use `with` to mix it into other classes
* One class can use **multiple mixins**

```dart
mixin CanSwim {
  void swim() {
    print('Swimming in the pool! 🏊');
  }
}

class SuperPet with CanFly, CanSwim {}

void main() {
  SuperPet pet = SuperPet();
  pet.fly(); // ☁️🛩️
  pet.swim(); // 🏊
}
```

---

## 🧠 Summary

| Term    | Means...                                          |
|---------|---------------------------------------------------|
| `mixin` | A special class with powers you can add to others |
| `with`  | Adds a mixin’s power to another class             |

---

## 🎉 So remember:

A **Mixin** is like a **superpower sticker** 🧩✨
You can stick it onto your classes to give them extra skills like flying, swimming, or dancing — without changing who
they are!

