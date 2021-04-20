const kRequiredField = 'Campo obrigatório';
const kNotNegativeNumber = 'O Campo deve ser Positivo';
const kNotZero = 'O campo nao pode ser zero';

class ValidatorHelper {
  static String validations(String text) {
    if (text.isEmpty)
      return kRequiredField;
    else if (text.contains('-')) {
      return kNotNegativeNumber;
    } else if (text.startsWith('0') && text.length < 2) {
      return kNotZero;
    } else
      return null;
  }
}
