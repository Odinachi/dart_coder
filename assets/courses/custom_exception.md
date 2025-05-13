# Custom Exceptions

Imagine you're playing in your toy store 🧸.

There are **rules**:

* No breaking toys 🚫
* No eating cookies in the toy area 🍪

If you break a rule, the **Toy Police** 👮 come and give you a **special warning**.

But guess what?

You can even make **your own special rule** with a custom message like:

> “No jumping on the teddy bear!”

🎯 In Dart, that’s what a **custom exception** is:

> Your own **special error** with a **custom name** and **custom message**!

---

## 🚨 Default Exception

```dart
void main() {
  throw Exception('Something went wrong!');
}
```

That’s a normal exception — but what if you want your own?

---

## 🏗️ Create a Custom Exception

```dart
class CookieException implements Exception {
  final String message;

  CookieException(this.message);

  @override
  String toString() => 'CookieException: $message';
}
```

This makes a **CookieException** — like saying:

> "You ate cookies where you're not supposed to!" 🍪🚫

---

## 🧪 Use Your Custom Exception

```dart
void checkCookieArea(bool eatingCookies) {
  if (eatingCookies) {
    throw CookieException('No eating cookies in the toy area!');
  }
  print('All good. No crumbs here! 😄');
}

void main() {
  try {
    checkCookieArea(true);
  } catch (e) {
    print(e);
  }
}
```

### 🧠 Output:

```
CookieException: No eating cookies in the toy area!
```

🎉 You made your own **rule**, and Dart **enforced it** using your custom exception!

---

## 🧱 Another Example: ToyBrokenException

```dart
class ToyBrokenException implements Exception {
  final String toy;

  ToyBrokenException(this.toy);

  @override
  String toString() => 'Oh no! Your $toy is broken!';
}

void play(String toy, bool isBroken) {
  if (isBroken) {
    throw ToyBrokenException(toy);
  }
  print('Yay! Playing with $toy 🎮');
}

void main() {
  try {
    play('robot', true);
  } catch (e) {
    print(e);
  }
}
```

### 🧠 Output:

```
Oh no! Your robot is broken!
```

---

## 🧠 Summary

| Term                   | What it Means                                   |
|------------------------|-------------------------------------------------|
| `Exception`            | Dart's way of saying “Uh-oh! Something's wrong” |
| `implements Exception` | How to make your own exception                  |
| `throw`                | How to raise (trigger) an error                 |
| `try-catch`            | How to handle the problem                       |

---

## 🎉 So remember:

A **Custom Exception** is like a **rulebook** 📕 you create:

> "If someone breaks my rule, Dart will shout my warning!"

It helps make your code smart and safe — like having your own tiny toy police 👮 for every problem!

