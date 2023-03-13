class ParseStringForNum {
  List<dynamic> parsing(String data) {
    int? j;
    List<dynamic> temp = [];
    List<dynamic> answer = [];
    for (var i = 0; i < data.length; i++) {
      j = int.tryParse(data[i]);
      if (j != null) {
        temp.add(j);
        if (i == data.length - 1 && temp.isNotEmpty) {
          answer.add(_arrayToNum(temp));
          temp.clear();
        }
      } else if (temp.isNotEmpty) {
        if (i < data.length - 1 && data[i] == '-' && int.tryParse(data[i + 1]) != null) {
          answer.add(_arrayToNum(temp));
          temp.clear();
          temp.add(data[i]);
          continue;
        }
        if (data[i] == '.' && !temp.contains('.')) {
          if (i == data.length - 1) {
            answer.add(_arrayToNum(temp));
            temp.clear();
            continue;
          } else {
            temp.add(data[i]);
          }
        } else {
          answer.add(_arrayToNum(temp));
          temp.clear();
          continue;
        }
      } else if (i < data.length - 1 && data[i] == '-' && int.tryParse(data[i + 1]) != null) {
        temp.add(data[i]);
      }
      {
        continue;
      }
    }
    return answer;
  }

  num? _arrayToNum(List<dynamic> arrayOfDigits) {
    var result = '';
    result = arrayOfDigits.join('');
    return int.tryParse(result) ?? double.tryParse(result);
  }
}
