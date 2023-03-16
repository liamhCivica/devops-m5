# Use node
FROM node:lts
# Copy contents into image
COPY . . 
# install node dependencies with npm
RUN npm install
# Expose correct port
EXPOSE 3000
# Create an entrypoint
ENTRYPOINT ["node", "index.js"]
