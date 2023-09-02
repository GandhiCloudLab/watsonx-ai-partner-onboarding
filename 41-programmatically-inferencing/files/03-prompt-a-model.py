from ibm_watson_machine_learning.foundation_models.utils.enums import ModelTypes
from ibm_watson_machine_learning.foundation_models import Model
import json

my_credentials = { 
    "url"    : "https://us-south.ml.cloud.ibm.com", 
    "apikey" : "<my-IBM-Cloud-API-key>"
}      

model_id    = ModelTypes.FLAN_T5_XXL
gen_parms   = { "max_new_tokens" :300 }
project_id  = "<my-watsonx.ai-project-ID>"
space_id    = None
verify      = False

model = Model( model_id, my_credentials, gen_parms, project_id, space_id, verify )   
 
prompt_txt = "Write about NASA "
gen_parms_override = None

generated_response = model.generate( prompt_txt, gen_parms_override )

print( json.dumps( generated_response, indent=2 ) )
