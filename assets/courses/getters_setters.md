# Getters and Setters

Imagine you have a **magic toy box** 🎁 in your room.
You can do two things:

* **Look inside the box** 👀 → That’s a **Getter**
* **Put something inside** 🧸 → That’s a **Setter**

💡 In Dart:

* A **getter** helps you **get a value**
* A **setter** helps you **set or change a value**

---

## 🎁 Let’s Make a ToyBox

```dart
class ToyBox {
  String _toy = 'Teddy Bear'; // Private toy

  // Getter
  String get toy {
    print('Opening the toy box...');
    return _toy;
  }

  // Setter
  set toy(String newToy) {
    print('Putting $newToy in the toy box...');
    _toy = newToy;
  }
}
```

### 🧸 Use the ToyBox

```dart
void main() {
  ToyBox box = ToyBox();

  print(box.toy); // Get the toy
  box.toy = 'Robot'; // Set a new toy
  print(box.toy); // Get the updated toy
}
```

### 🖨️ Output:

```
Opening the toy box...
Teddy Bear
Putting Robot in the toy box...
Opening the toy box...
Robot
```

---

## 💭 Why Use Getters and Setters?

Because they let you:

* **Control access** to private things (`_toy`)
* **Do something extra** when getting or setting
* **Hide details** and keep your code clean

---

## 🔒 What’s with the Underscore `_`?

In Dart, if a variable starts with `_`, it’s **private** — like a **secret drawer** 🗄️
Only the class can open it directly.

Others must **ask nicely** using getters and setters. 😊

---

## 🧠 Summary

| Term    | What It Does                               |
|---------|--------------------------------------------|
| `get`   | Lets you **see** or **read** something     |
| `set`   | Lets you **change** or **write** something |
| `_name` | A **private** variable (only inside class) |

---

## 🎉 So remember:

**Getters and Setters** are like special doors 🚪 to your toys or secrets:

* You can peek inside (**get**) 📦
* You can put something new inside (**set**) 🧃

And you always do it in a **safe and polite** way! 😄

