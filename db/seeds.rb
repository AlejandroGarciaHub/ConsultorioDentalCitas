# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Procedure.create(nombre: 'Limpieza Bucal', descripcion: 'La limpieza de boca es el proceso por el que se elimina el sarro adherido a los dientes y las pigmentaciones externas. También se denomina higiene bucal. El sarro es un material que se forma en la boca y se pega a los dientes, preferentemente en la zona del cuello, y está constituido por placa, restos, bacterias, calcio, etc. Este sarro es un elemento antiestético e irritativo de la encia y favorece el desarrollo de la enfermedad periodontal.',costo: 300)
Procedure.create(nombre: 'Obturacion (Empaste)',descripcion: 'La obturación dental es el procedimiento por el que se restaura la anatomía de un diente que se había visto alterada bien por la existencia de una caries (en este caso denomina empaste) o por una rotura del mismo que genera una cavidad. La obturación consiste en rellenar la cavidad del diente con un material especial, devolviendo al mismo su anatomía (forma) habitual, con el fin de realice su función de forma correcta.',costo: 1200)
Procedure.create(nombre: 'Implantes Dentales',descripcion: 'La principal función del implante es remplazar el diente perdido y dar un agradable aspecto tal como si se tratase de un diente natural.',costo: 5000)
Procedure.create(nombre: 'Ortodoncia',descripcion: 'Los brackets y la ortodoncia se utilizan para corregir la "mordedura deficiente" u oclusión dental defectuosa (cuando los dientes están amontonados o torcidos). En algunos casos, los dientes están derechos, pero la mandíbula superior y la inferior no encajan correctamente. Estos problemas de mandíbula o alineación de los dientes pueden ser heredados o podrían ser consecuencia de una lesión, de la pronta o tardía pérdida de dientes, o de chuparse el pulgar.',costo: 18000)
Procedure.create(nombre: 'Cirugia',descripcion: 'La cirugía de implantes dentales en México es un proceso quirúrgico donde el paciente es sometido a un tratamiento ambulatorio, rápido y sin trauma; esto le permite obtener una dentadura completa, sana y una sonrisa blanca y sin complejos ¡para siempre!',costo: 4000)
