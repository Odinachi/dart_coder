# Anonymous Functions

Imagine you’re baking cookies 🍪 with your mom.

She says:

> “Here’s a job: whenever the oven beeps, open the door and take out the cookies!”

You don’t give that job a **name**, you just do it when it’s time.

👉 That’s what an **anonymous function** is:
A **function without a name** — just like a one-time task you do right away!

---

## 🪄 Normal Function (Named)

```dart
void greet() {
  print('Hello!');
}

void main() {
  greet(); // ✅ This works because greet has a name
}
```

---

## 😶 Anonymous Function

No name, just action!

```dart
void main() {
  var sayHi = () {
    print('Hi there!');
  };

  sayHi(); // Output: Hi there!
}
```

> It's like saying: “Hey Dart! Here’s a job. I won’t name it, just run it when I say so.”

---

## 🍪 Use Anonymous Function Right Away

```dart
void main() {
      () {
    print('Baking cookies... 🍪');
  }(); // ← The () at the end runs the function immediately
}
```

This is called an **Immediately Invoked Function Expression (IIFE)**.

---

## 🛒 In a List or Loop

Let’s say we have a list of shopping items, and we want to say hello to each item:

```dart
void main() {
  var items = ['Milk', 'Bread', 'Juice'];

  items.forEach((item) {
    print('Hello, $item!');
  });
}
```

Here:

* `item` is the thing from the list
* The `function` is anonymous — no name, just does its job inside `forEach`

---

## 🎁 You Can Also Return Stuff

```dart
void main() {
  var doubleIt = (int x) {
    return x * 2;
  };

  print(doubleIt(5)); // Output: 10
}
```

---

## 🧠 Summary

| Term               | Means...                                |
|--------------------|-----------------------------------------|
| Anonymous Function | A function with **no name**             |
| `() { ... }`       | Anonymous function format               |
| `() { ... }();`    | Run it **right away**                   |
| `(x) => x + 1`     | Short anonymous function (arrow syntax) |

---

## 🎉 So remember:

An **anonymous function** is like a **secret little helper** 🧙‍♂️
It shows up, does its job, and disappears — no name needed!

Just like when mom says:

> “Quick! Hand me the cookies when the timer rings!” 🍪⏰

