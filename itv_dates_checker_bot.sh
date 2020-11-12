while (true); do
  res=$(curl --cookie "JSESSIONID=3073A2CC8BAADA283B059AEB40022F4A; wt3_sid=%3B350258498646185; _fbp=fb.1.1559121853510.1703425865; wt_geid=815532575360079100691006; cookie_warning_show=false; wt_cdbeid=1; JSESSIONID=6DCB05B3D34C5DF07D1AA11AE5ED1046; wt3_eid=%3B350258498646185%7C2155912185354215759%232155962753397667206; wt_rla=350258498646185%2C6%2C1559627424988" -d '{"vic": {"id": "19"},"vehicleType": {"id": "10"},"vehicleServices":[{"id": "1000"}],"filterMonth": 6,"filterYear": 2019,"locale": "es-ES"}' -H "Content-Type: application/json" -X POST https://www.tuv.com/tos-backend/rest/ajax/getVacancies)
  echo $res
  if [ "${res}" == '{"isRequestValid":"true","vacancies":{"date":"","time":""}}' ]; then
    echo "NO"
  else
    echo "Fechas disponibles"
  fi
  sleep 30
done

res='{"isRequestValid":"true","vacancies":{"date":2,"time":""}}'
echo $res | jq -r '.isRequestValid'

# echo "$date"
