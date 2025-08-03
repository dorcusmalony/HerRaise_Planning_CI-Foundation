FROM nginx:alpine AS production

WORKDIR /usr/share/nginx/html

# Copy built frontend only
COPY dist/frontend/ ./

# Remove default nginx config and add custom config if needed
# COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]