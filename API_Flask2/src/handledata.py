from pyvi import ViUtils
from src.query_db import check_sw

def handle_response_code(message_chatbot):
        message = got_message(message_chatbot)
        response = check_sw(message)
        return response
    
def got_message(message_chatbot):
        mes = ViUtils.remove_accents(message_chatbot)
        message = mes.decode()
        message = message.replace(' ',',')
        return message.lower()
