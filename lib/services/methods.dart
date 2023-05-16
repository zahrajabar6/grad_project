class Methodes {
  static double getPercent(double voltage) {
    var percent = 0.0;
    if (voltage <= 11.63) {
      percent = 0.0;
    } else if (voltage <= 11.70) {
      percent = 0.10;
    } else if (voltage <= 11.81) {
      percent = 0.20;
    } else if (voltage <= 11.96) {
      percent = 0.30;
    } else if (voltage <= 12.11) {
      percent = 0.40;
    } else if (voltage <= 12.23) {
      percent = 0.50;
    } else if (voltage <= 12.41) {
      percent = 0.60;
    } else if (voltage <= 12.51) {
      percent = 0.70;
    } else if (voltage <= 12.65) {
      percent = 0.80;
    } else if (voltage <= 12.78) {
      percent = 0.90;
    } else if (voltage <= 12.89) {
      percent = 1.0;
    }
    return percent;
  }
}
