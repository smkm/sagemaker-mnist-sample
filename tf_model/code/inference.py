"""エンドポイントと機械学習モデルの中継を行なう

ref: https://www.tdi.co.jp/miso/amazon-sagemaker-deploy
"""

import base64
import io
import json
import requests
 
def input_handler(data, context):
    if context.request_content_type == "application/json":
        body = data.read().decode("utf-8")
        param = json.loads(body)
       
        return json.dumps(param)
    else:
        _return_error(415, 'Unsupported content type "{}"'.format(context.request_content_type or 'Unknown'))
 
def output_handler(response, context):
    if response.status_code != 200:
        _return_error(response.status_code, response.content.decode('utf-8'))
    response_content_type = context.accept_header
    prediction = response.content
 
    return prediction, response_content_type
 
 
def _return_error(code, message):
    raise ValueError('Error: {}, {}'.format(str(code), message))