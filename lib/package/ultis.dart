double statusOpacity(
    {required bool diabled, required bool sketleton, required bool loading}) {
  if (diabled) {
    return 0.3;
  } else if (sketleton) {
    return 0.05;
  } else if (loading) {
    return 0.6;
  } else {
    return 1;
  }
}
