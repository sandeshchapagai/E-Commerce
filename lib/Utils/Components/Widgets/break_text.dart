String truncateString(String text, int maxLength) {
  if (text.length <= maxLength) {
    return text; // Return the original string if its length is within the limit
  } else {
    return text.substring(0, maxLength); // Return a truncated version of the string
  }
}
