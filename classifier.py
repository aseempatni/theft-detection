# Set up the data
import graphlab as gl
data =  gl.SFrame('/data/Consumer Master.csv')

# Create the model
# data['is_expensive'] = data['price'] > 30000
data['target'] = data['SRM_GOVT_EMP_CATEGORY'] == '-1'
model = gl.classifier.create(data,target = 'target' ,features= ["SRM_SERVICE_NO","SRM_BU_ID","SRM_PC_ID","SRM_TRANSFORMER_ID","SRM_SACNCTION_LOAD","TFM_TARIFF_NAME","SRM_POLE_ID","MDBM_SERIAL_NO","MDBM_MFG_CODE","SRM_PHASE","SRM_LOT_ID","SRM_CONNECTION_DATE","SRM_PURPOSE_ID","SRM_DISCON_TAG_ID",'SRM_SPANCO_DISCON_TAG','SRM_GOVT_EMP_CATEGORY','SRM_MSEDCL_NET_BILL_AMT','SRM_PAY_DATE','SRM_ARREARS','SRM_BILL_AMOUNT'])


# Make predictions and evaluate results.
classification = model.classify(data)
results = model.evaluate(data)