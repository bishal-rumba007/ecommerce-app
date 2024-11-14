
  String getCurrency(String country) {
    switch (country) {
      case "Dubai":
        return "AED";
      case "Oman":
        return "OMR";
      case "Qatar":
        return "QAR";
      case "Saudi Arabia":
        return "SAR";
      default:
        return "\$";
    }
  }