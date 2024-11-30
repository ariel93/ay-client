# בחר את התמונה הבסיסית של Node.js
FROM node:18

# הגדר את תיקיית העבודה
WORKDIR /usr/src/app

# העתק את קבצי ה-package.json וה-package-lock.json
COPY package*.json ./

# התקן את התלויות
RUN npm install

# העתק את שאר הקבצים
COPY . .

# הפעל את השרת של Vite בפקודת dev
EXPOSE 3000

# הפעל את השרת של Vite במצב פיתוח
CMD ["npm", "run", "dev"]