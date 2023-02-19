enum FeedbackCategory {
  cnblog("CNBLOG", "cnblog", "博客园"),
  sudoku("SUDOKU", "sudoku", "每日数独");

  final String value;
  final String path;
  final String description;

  const FeedbackCategory(this.value, this.path, this.description);
}
