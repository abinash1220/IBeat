class ConvertedHexToAnalog {
  static  List<int> dataRq({required hexData}) {
    int length = hexData.length ~/ 2;
    List<int> recv = List<int>.generate(length, (index) => 0);
    List<int> adcValues = [];

    for (int i = 0; i < length; i++) {
      recv[i] = int.parse(hexData.substring(i * 2, i * 2 + 2), radix: 16);
    }

    if (recv != null &&
        recv.length >= (7 + 3 + 18) &&
        recv[7] == 0xB2 &&
        recv[9] == 0x00 &&
        recv[10] > 0x83) {
      int p = 11; // StartSample
      int ECG_Data_Offset = recv[p + 12]; // 3a
      int ECG_Data_Cnt = recv[p + 13]; // 67

      for (int i = 0; i < ECG_Data_Cnt; i++) {
        int adc = (recv[10 + ECG_Data_Offset] +
                (recv[11 + ECG_Data_Offset] * 256) -
                32768) *
            -1;

        adcValues.add(adc);
        ECG_Data_Offset += 2;
      }
    }

    // Print the array of ADC values
    print(adcValues);
    return adcValues;
  }
}
