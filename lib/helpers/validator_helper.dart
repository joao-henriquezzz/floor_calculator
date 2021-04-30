class ValidatorHelper {
  static String isNotEmptyValue(String text) {
    if (text.isEmpty) return 'Campo obrigatório';
    if (double.parse(text.replaceAll(',', '.')) <= 0)
      return 'O Número não pode ser negativo, menor ou igual a zero';
    return null;
  }
}
