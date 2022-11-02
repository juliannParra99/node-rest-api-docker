# //aca va lo que necesita mi app para funcionar en cualquier sistema.

#// from es la imagen, lo que mi app necesita usar y su version
FROM node:16

#//tengo que especificar donde va a ir mi proyecto; tengoq ue creear un working dir(directorio de trabajo); especifica donde esta el directorio de trabajo; va  a contener todos mir archivos

WORKDIR /app

#// COPY: pasa mis archivos al directorio de trabajo; primero paso los pack.json, por que contienen la lsita de dependencias; lo que necesita el sistema para funcionar

#//esto quiere decir "todos los archivosx que comiencen con package, y luego continuen con cualquier caracter y terminan con .json, copialo a mi directorio de trabajo"
COPY package*.json ./

#//run para que corra un comando, en este caso para que instale las dependecias
RUN npm install 

#/Ahora copio mis archivos de src en el directorio
#con el punto copia todo lo mmis archivos en el conteiner, y con otro punto  decimos que lo copie al directorio de trabajo.menos la node_modelues, para lo cual usamos un docker ignore
COPY . .

#// comando para ejecutar el proyecto; como cuando ejecuto nodemon; como cuando ejecuto el localgost con nodemon con el comando;aca paso los comandos

CMD [ "npm", "start" ]

#//cone sto tengo para que mi app funcione en cualquier sistema.

#//para que se ejecute esto encesio crear una imagen .  se crea con docker build - t <nombre de la imagen> ;en la consola.