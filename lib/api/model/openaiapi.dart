import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> generateRecipeList() async {
  final apiKey = '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';
  final apiUrl = 'https://api.openai.com/v1/engines/text-davinci-003/completions';

  final prompt = 'Generate a list of 10 easy-to-make chicken recipes.';

  final response = await http.post(
    Uri.parse(apiUrl),
    headers: {
      'Authorization': 'Bearer $apiKey',
      'Content-Type': 'application/json',
    },
    body: jsonEncode({
      'prompt': prompt,
      'max_tokens': 150, // Adjust as needed
    }),
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    final generatedText = data['choices'][0]['text'];
    
    // Parse and display the generated recipe list as needed.
    print(generatedText);
  } else {
    // Handle API error.
    print('API Error: ${response.statusCode}');
  }
}
