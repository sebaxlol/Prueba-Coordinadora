Feature: Solicitar recogida de producto

Scenario: Solicitar recogida de producto con datos válidos

  Given el usuario está en la página de inicio de la aplicación
  When el usuario ingresa los siguientes datos:
    | campo | valor |
    |---|---|
    | dirección | Cl 10 # 20 30 |
    | fecha recogida | 2023-12-04 |
    | nombre entrega | prueba |
    | apellidos entrega | prueba1 |
    | celular entrega | 3045677777 |
    | email usuario | anar.7@gmail.com |
    | descripcion tipo via | Kilómetro |
    | aplicativo | envios |
  Then el servicio responde con el mensaje "Solicitud de recogida creada con éxito" y el código de respuesta 200

Scenario: Solicitar recogida de producto con datos inválidos

Given el usuario está en la página de inicio de la aplicación
When el usuario ingresa los siguientes datos:
  | campo | valor |
  | dirección | |
  | fecha recogida | 2023-12-00 |
  | nombre entrega | prueba |
  | apellidos entrega | prueba1 |
  | celular entrega | 3045677777 |
  | email usuario | anar.7@gmail.com |
  | descripcion tipo via | Kilómetro |
  | aplicativo | envios |
Then el servicio responde con el mensaje "Error en los datos ingresados" y el código de respuesta 400

Scenario: Solicitar recogida de producto con fecha de recogida ya utilizada

Given el usuario está en la página de inicio de la aplicación
When el usuario ingresa los siguientes datos:
  | campo | valor |
  | dirección | Cl 10 # 20 30 |
  | fecha recogida | 2023-12-04 |
  | nombre entrega | prueba |
  | apellidos entrega | prueba1 |
  | celular entrega | 3045677777 |
  | email usuario | anar.7@gmail.com |
  | descripcion tipo via | Kilómetro |
  | aplicativo | envios |
Then el servicio responde con el mensaje "Ya existe una solicitud para esta dirección y fecha" y el código de respuesta 400