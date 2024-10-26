FROM oven/bun:latest

# set the working directory
WORKDIR /app

# copy the package.json and bun.lock
COPY package*.json bun.lockb ./

# install the required dependencies
RUN bun install --no-save

# copy rest of the files
COPY . .

# compile the app
RUN bun run build

# set the port
ARG PORT
ENV PORT=$PORT
EXPOSE $PORT

# run the app
CMD ["./app"]
