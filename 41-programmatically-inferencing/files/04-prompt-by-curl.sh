curl "https://us-south.ml.cloud.ibm.com/ml/v1-beta/generation/text?version=2023-05-29" \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_ACCESS_TOKEN' \
  -d $'{
  "model_id": "google/flan-ul2",
  "input": "Write a thank you note for attending a workshop.\\n\\nAttendees: interns\\nTopic: codefest, AI\\nTone: energetic\\n",
  "parameters": {
    "decoding_method": "sample",
    "max_new_tokens": 200,
    "min_new_tokens": 50,
    "random_seed": 111,
    "stop_sequences": [],
    "temperature": 0.8,
    "top_k": 50,
    "top_p": 1,
    "repetition_penalty": 2
  },
  "project_id": "1c915286-eacf-442c-ab6d-767a2504fa4e"
}'

