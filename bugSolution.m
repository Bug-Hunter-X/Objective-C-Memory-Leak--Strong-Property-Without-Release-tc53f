To fix this, ensure proper management of the `myString` property.  There are several approaches:

1. **Using `weak` Property:** If `MyClass` doesn't need to retain `myString` for its lifecycle, declare it as `weak`:

```objectivec
@property (nonatomic, weak) NSString *myString;
```

This prevents `MyClass` from retaining `myString`, ensuring that the object is released when appropriate.

2. **Explicit Release (Rarely Needed with ARC):** In situations where you need finer control or working with non-ARC code, manually release the string before exiting `someMethod`:

```objectivec
- (void)someMethod {
    self.myString = [[NSString alloc] initWithString:@"Hello"];
    // ... some code ...
    [self.myString release]; // Manually release (Less common with ARC)
    self.myString = nil; // Set to nil to prevent accidental use
}
```

The preferred method is generally using a `weak` property when the owning object doesn't need to hold on to the string's lifecycle.  Using `strong` properties with appropriate release mechanisms is needed when needed but requires great care to avoid memory issues.