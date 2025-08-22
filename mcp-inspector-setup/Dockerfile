# Use a slim Node.js base image
FROM node:24.6-slim

# Set the working directory
WORKDIR /app

# Remove the unnecessary npx installation command
# RUN npm install -g npx  # This line is unnecessary

# Default environment variables for MCP Inspector
ENV CLIENT_PORT=6274 \
    SERVER_PORT=6277 \
    NODE_ENV=production

# Expose the necessary ports
EXPOSE $CLIENT_PORT $SERVER_PORT

# Copy any local MCP server configuration or setup files if needed
# Example: COPY mcp.json /app/mcp.json
# Uncomment or add any required files or configurations

# Run the MCP Inspector
# You can pass additional server arguments or environment variables via docker run
# CMD pattern allows customization on container start
CMD ["npx", "@modelcontextprotocol/inspector"]

# Alternatively, to specify a server implementation you can adjust the CMD as:
# CMD ["npx", "@modelcontextprotocol/inspector", "node", "build/index.js"]