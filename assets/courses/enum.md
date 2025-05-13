# Enums

Imagine your mom asks you to pick a **sock color** for school.
You only have **red**, **blue**, and **green** socks. 🎨

You **can’t pick any other color**, just one from that list.

👉 That list of specific, fixed choices is called an **enum**.

> **Enum** stands for **enumeration**, which means **a list of named values**.

---

## 🎨 Let's Make a SockColor Enum

```dart
enum SockColor {
  red,
  blue,
  green,
}
```

This says:

> “Hey Dart! These are the only sock colors allowed.”

---

## 🧦 Using the Enum

```dart
void main() {
  SockColor mySocks = SockColor.red;

  print(mySocks); // Output: SockColor.red
}
```

---

## 🚦 Real-Life Example: Traffic Light

```dart
enum TrafficLight {
  red,
  yellow,
  green,
}

void main() {
  TrafficLight light = TrafficLight.red;

  if (light == TrafficLight.red) {
    print('Stop! 🛑');
  } else if (light == TrafficLight.yellow) {
    print('Get Ready! ⚠️');
  } else if (light == TrafficLight.green) {
    print('Go! 🟢');
  }
}
```

---

## 🧠 Why Use Enums?

* ✅ You limit the values to **only what you want**
* ✅ Your code is **easy to read**
* ✅ You avoid **mistakes from wrong values**

---

## ✨ Extra: Get Enum Name

```dart
void main() {
  SockColor color = SockColor.green;
  print(color.name); // Output: green
}
```

---

## 🎯 Enum with Switch

```dart
void showMood(Mood mood) {
  switch (mood) {
    case Mood.happy:
      print('😊 Smile!');
      break;
    case Mood.sad:
      print('😢 It’s okay to cry.');
      break;
    case Mood.angry:
      print('😠 Take a deep breath.');
      break;
  }
}

enum Mood {
  happy,
  sad,
  angry,
}

void main() {
  showMood(Mood.happy);
}
```

---

## 💡 Summary

| Term            | Means...                      |
|-----------------|-------------------------------|
| `enum`          | A list of fixed, named values |
| `SockColor.red` | An enum value                 |
| `value.name`    | Get just the name, like `red` |

---

## 🎉 So remember:

**Enums** are like **a list of special, allowed choices** 🎯
You pick one from the list — no surprises, no mistakes!

Just like choosing a sock color from your drawer 🧦 or obeying the traffic light 🚦.

