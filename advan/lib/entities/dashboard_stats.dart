class DashboardStats {
  final int total;
  final int newBugs;
  final int inProgress;
  final int resolved;

  final double avgFixTime;
  final double reopenRate;
  final double slaPercent;

  DashboardStats({
    required this.total,
    required this.newBugs,
    required this.inProgress,
    required this.resolved,
    required this.avgFixTime,
    required this.reopenRate,
    required this.slaPercent,
  });
}