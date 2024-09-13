class EPricingCalculators {
  static double calculatePrice(double price, double discount) {
    return price - (price * discount / 100);
  }
}
