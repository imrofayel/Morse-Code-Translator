class Codes{

  static Map<String, String> moresCode = {

    'A': '.-', 'B': '-...', 'C': '-.-.', 'D': '-..', 'E': '.', 'F': '..-.',
    'G': '--.', 'H': '....', 'I': '..', 'J': '.---', 'K': '-.-', 'L': '.-..',
    'M': '--', 'N': '-.', 'O': '---', 'P': '.--.', 'Q': '--.-', 'R': '.-.',
    'S': '...', 'T': '-', 'U': '..-', 'V': '...-', 'W': '.--', 'X': '-..-',
    'Y': '-.--', 'Z': '--..',
    '1': '.----', '2': '..---', '3': '...--', '4': '....-', '5': '.....',
    '6': '-....', '7': '--...', '8': '---..', '9': '----.', '0': '-----',
    '.': '.-.-.-', ',': '--..--', '?': '..--..', "'": '.----.', '!': '-.-.--',
    '/': '-..-.', '(': '-.--.', ')': '-.--.-', '&': '.-...', ':': '---...',
    ';': '-.-.-.', '=': '-...-', '+': '.-.-.', '-': '-....-', '_': '..--.-',
    '"': '.-..-.', '\$': '...-..-', '@': '.--.-.'

  };

  static String encode(String text){

    String encoded = '';

    List<String> characters = text.toUpperCase().split('');

    for(String c in characters){

      if(c == ' ' || c == '\n'){

        encoded += ' / ';

      }

      else{

        moresCode.forEach((key, value) {

          if(c == key){

            encoded += '$value ';

          }

        });

      }

    }

    return encoded;

  }


  static String decode(String code){

    String decoded = '';

    List<String> characters = code.split(' ');

    for(String c in characters){

      if(c == '/'){

        decoded += ' ';

      }

      else{
        
        moresCode.forEach((key, value) {

          if(c == value){

            decoded += key;

          }

        });
      }
    }

    return decoded;
    
  }
}