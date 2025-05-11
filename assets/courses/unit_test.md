# Unit Testing (Basic)

Imagine you have a **toy car** 🚗, and you want to make sure that every time you press a button, it goes forward. You *
*test** it by pressing the button to see if it works, again and again, to make sure the toy car **does what you expect
**.

Unit testing is like **testing parts** (called **units**) of your program to make sure they behave correctly. Instead of
testing the whole thing, you test just the small parts (like the car's button) one by one.

👉 **Unit testing** in Dart helps you check if the individual pieces of your program work as expected.

---

## 🎁 Real-Life Analogy

| Real Life                                    | Dart Code                                             |
|----------------------------------------------|-------------------------------------------------------|
| Testing a **toy** to make sure it works      | Writing a **test** to check code                      |
| Checking if your **button works** every time | Testing a **function** to see if it behaves correctly |
| A **checklist** to see if things are correct | Using a **test case** to verify results               |

---

## 🧰 Example: A Simple Function to Add Two Numbers

Let’s start with a simple function: We want to add two numbers together.

```dart
int add(int a, int b) {
  return a + b;
}
```

Now, we need to **test** that this function works! Does it always give the correct result?

---

## ✅ How to Write a Unit Test

In Dart, we use the **test package** to write unit tests.

1. First, we need to add the test package in our `pubspec.yaml` file:

```yaml
dev_dependencies:
  test: ^any
```

2. Then, create a test file `add_test.dart` to check if our `add` function works properly.

---

### 🧒 Test Code Example

```dart
import 'package:test/test.dart'; // Import the test package

void main() {
  test('Test add function', () {
    // Arrange
    int a = 3;
    int b = 2;

    // Act
    int result = add(a, b);

    // Assert
    expect(result, equals(5)); // Check if result is 5
  });
}
```

---

## 📦 What Does This Do?

* `test`: This is the test function. It tells Dart to run our **unit test**.
* `expect`: This checks if the result is what we expect.
* `equals(5)`: This says we expect the result to be **5**.

---

## 🧸 Running the Test

To run the test, you simply run:

```bash
dart test add_test.dart
```

If everything is correct, it will say **PASS**! 🎉

---

## 🎨 More Test Examples

### 🧮 Test a Function to Multiply Numbers

Let’s say you have a function that multiplies two numbers:

```dart
int multiply(int a, int b) {
  return a * b;
}
```

You can write a test like this:

```dart
void main() {
  test('Test multiply function', () {
    int a = 3;
    int b = 4;

    int result = multiply(a, b);

    expect(result, equals(12)); // We expect 3 * 4 = 12
  });
}
```

---

### 🧸 Test for Edge Cases

Unit tests also help check **edge cases** (unusual inputs). What if you try adding zero or negative numbers?

```dart
void main() {
  test('Test adding zero', () {
    int result = add(0, 5);
    expect(result, equals(5)); // 0 + 5 should be 5
  });

  test('Test adding negative numbers', () {
    int result = add(-3, 5);
    expect(result, equals(2)); // -3 + 5 should be 2
  });
}
```

---

## 🧠 Why Write Unit Tests?

* **Check if things work**: Unit tests ensure that the small parts of your code do what you expect.
* **Prevent future mistakes**: If you change something in your code, tests help catch errors before they happen.
* **Automatic checking**: Tests help you check your code automatically whenever you need, like a **magic helper**!

---

## 📦 Summary

* **Unit tests** = Tests to check if your code works correctly.
* Write tests for **small parts** of your code (functions, methods).
* Use the `test` package to help you write and run your tests.
* **Testing is like checking** if your toy car works every time before you play with it!
* It helps you make sure your code is correct and keeps it working well.

