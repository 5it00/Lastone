import 'dart:async';

class CashHelper {
  final Map<String, dynamic> _cache = {};

  // Store data in the cache
  void put(String key, dynamic value) {
    _cache[key] = value;
  }

  // Retrieve data from the cache
  dynamic get(String key) {
    return _cache[key];
  }

  // Check if a key exists in the cache
  bool containsKey(String key) {
    return _cache.containsKey(key);
  }

  // Remove data from the cache
  void remove(String key) {
    _cache.remove(key);
  }

  // Clear the entire cache
  void clear() {
    _cache.clear();
  }

  // Cache data with an expiration time
  void putWithExpiration(String key, dynamic value, Duration duration) {
    put(key, value);
    if (duration != null) {
      Timer(duration, () => remove(key));
    }
  }

  static removeData({required String key}) {}

  static bool? getData({required String key}) {}

  static init() {}
}

// Example usage:
void main() {
  CashHelper cache = CashHelper();

  // Store data in the cache
  cache.put("user", {"name": "John", "age": 30});

  // Retrieve data from the cache
  var user = cache.get("user");
  print(user); // {"name": "John", "age": 30}

  // Check if a key exists in the cache
  bool hasUser = cache.containsKey("user");
  print(hasUser); // true

  // Remove data from the cache
  cache.remove("user");
  print(cache.containsKey("user")); // false
}