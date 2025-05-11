# Classes and Objects

Imagine you have a **blueprint** to build **teddy bears** 🧸.
The blueprint says:

* What color the teddy is 🟤🟡
* What size it is 📏
* Whether it can talk or not 🗣️

This blueprint is a **Class**!

👉 A **Class** is like a **template** or **recipe** for making **things (Objects)**.

---

## 🧸 Making a Teddy Class in Dart

```dart
class TeddyBear {
  String color = 'Brown';
  String size = 'Medium';

  void talk() {
    print('Hi! I\'m a $color teddy bear!');
  }
}
```

* `color` and `size` are like teddy’s **features**
* `talk()` is what the teddy can **do**

---

## 🧸🧸 Making Teddies (Objects)

Now you use the class to make real teddy bears!

```dart
void main() {
  TeddyBear teddy1 = TeddyBear();
  teddy1.color = 'Yellow';
  teddy1.size = 'Small';
  teddy1.talk();

  TeddyBear teddy2 = TeddyBear();
  teddy2.color = 'Brown';
  teddy2.size = 'Big';
  teddy2.talk();
}
```

Output:

```
Hi! I'm a Yellow teddy bear!
Hi! I'm a Brown teddy bear!
```

🎉 You used one class to make **two different teddy bears**!

---

## 🔧 Use a Constructor (Build Teddies Faster!)

Instead of setting the features later, you can use a **constructor** (like a magic machine!) to build your teddy
instantly:

```dart
class TeddyBear {
  String color;
  String size;

  // Constructor!
  TeddyBear(this.color, this.size);

  void talk() {
    print('Hi! I\'m a $color teddy bear of size $size!');
  }
}
```

Now build and talk faster:

```dart
void main() {
  TeddyBear teddy = TeddyBear('Red', 'Huge');
  teddy.talk(); // Hi! I'm a Red teddy bear of size Huge!
}
```

---

## 🧠 Summary

| Term          | Means...                                            |
|---------------|-----------------------------------------------------|
| `Class`       | The **blueprint** or recipe 📐                      |
| `Object`      | The **real thing** made from that blueprint 🧸      |
| `Constructor` | A special way to **build** an object fast ⚙️        |
| `Method`      | Something the object can **do** (like `talk()`) 🗣️ |

---

## 🎉 So remember:

* A **Class** is like a **teddy bear blueprint** 🧸📐
* An **Object** is the **real teddy bear** you can play with
* Dart helps you **make lots of cool objects** from one class!

